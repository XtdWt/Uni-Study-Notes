const SITE_NAME = "My Study Notes";

const subjects = [
  {
    id: "geo_and_topology",
    label: "Geometry and Topology",
    prefix: "MATH3061/svgs/page_",
    pages: 3,
    pdf: "MATH3061/notes.pdf"
  },
  {
    id: "measure_theory_fourier_transform",
    label: "Measure Theory and Fourier Transform",
    prefix: "MATH4069/svgs/page_",
    pages: 6,
    pdf: "MATH4069/notes.pdf"
  },
  {
    id: "computational_mathematics",
    label: "Computational Mathematics",
    prefix: "MATH4076/svgs/page_",
    pages: 7,
    pdf: "MATH4076/notes.pdf"
  },
  {
    id: "probability_martingale_theory",
    label: "Probability and Martingale Theory",
    prefix: "MATH4528/svgs/page_",
    pages: 4,
    pdf: "MATH4528/notes.pdf"
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
    btn.className   = "nav-tab";
    btn.textContent = label;
    btn.dataset.id  = id;
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

function loadPages({ prefix, pages }) {
  content.innerHTML = "";
  for (let i = 1; i <= pages; i++) {
    const obj = document.createElement("object");
    obj.type = "image/svg+xml";
    obj.data = `${prefix}${i}${PAGE_EXT}`;
    obj.className = "page-object";
    content.appendChild(obj);
  }
}

function navigate() {
  const id = location.hash.slice(1) || subjects[0].id;
  const subject = subjects.find(s => s.id === id) ?? subjects[0];

  document.title = `${subject.label} — ${SITE_NAME}`;
  setActiveTab(subject.id);

  downloadBtn.style.visibility = subject.pdf ? "visible" : "hidden";
  if (subject.pdf) downloadBtn.href = subject.pdf;

  loadPages(subject);
}

initNav();
navigate();
window.addEventListener("hashchange", navigate);
