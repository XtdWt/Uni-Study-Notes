const SITE_NAME = "XtdWt: Study Notes";

const subjects = [
  {
    id: "",
    label: "Home",
    folder: "",
  },
  {
    id: "geo_and_topology",
    label: "Geometry and Topology",
    folder: "MATH3061",
  },
  {
    id: "measure_theory_fourier_transform",
    label: "Measure Theory and Fourier Transform",
    folder: "MATH4069",
  },
  {
    id: "computational_mathematics",
    label: "Computational Mathematics",
    folder: "MATH4076",
  },
  {
    id: "probability_martingale_theory",
    label: "Probability and Martingale Theory",
    folder: "MATH4528",
  },
];

const PAGE_EXT = ".svg";

const nav = document.getElementById("subject-nav");
const content = document.getElementById("content");
const downloadBtn = document.getElementById("download-btn");

document.querySelector(".site-title").textContent = SITE_NAME;

function initNav() {
  subjects.forEach(({ id, label }) => {
    const btn = document.createElement("button");
    btn.className = "nav-tab";
    btn.textContent = label;
    btn.dataset.id = id;
    btn.setAttribute("role", "tab");
    btn.addEventListener("click", () => { location.hash = id; });
    nav.appendChild(btn);
  });
}

function setActiveTab(id) {
  nav.querySelectorAll(".nav-tab").forEach(btn => {
    const active = btn.dataset.id === id;
    btn.classList.toggle("active", active);
    btn.setAttribute("aria-selected", active);
    btn.setAttribute("tabindex", active ? "0" : "-1");
  });
}

async function loadPages({ folder }) {
  content.innerHTML = "";
  let page = 1;

  if (folder === "") {
    content.innerHTML = `
      <p class="state-msg">
        <strong>Welcome</strong>
        Select a subject to view notes.
      </p>`;
    return
  }

  while (true) {
    const obj = document.createElement("object");
    obj.type = "image/svg+xml";
    obj.className = "page-object";
    obj.data = `${folder}/svgs/page_${page}${PAGE_EXT}`;
    content.appendChild(obj);

    const loaded = await new Promise(resolve => {
      obj.onload  = () => resolve(true);
      obj.onerror = () => resolve(false);
    });

    if (!loaded) { obj.remove(); break; }

    page++;
  }

  if (page === 1) {
    content.innerHTML = `
      <p class="state-msg">
        <strong>No pages found</strong>
        Expected SVG files at <code>${folder}/svgs/page_1${PAGE_EXT}</code>
      </p>`;
  }
}

function navigate() {
  const id = location.hash.slice(1) || subjects[0].id;
  const subject = subjects.find(s => s.id === id) ?? subjects[0];
  const pdf_path = `${subject.folder}/notes.pdf`;

  document.title = `${subject.label} — ${SITE_NAME}`;
  setActiveTab(subject.id);

  downloadBtn.style.visibility = (subject.folder != "") ? "visible" : "hidden";
  if (pdf_path) downloadBtn.href = pdf_path;

  loadPages(subject);
}

initNav();
navigate();
window.addEventListener("hashchange", navigate);
