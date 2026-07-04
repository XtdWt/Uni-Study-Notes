const prefix = "svgs/page_";
const ext = ".svg";
let page = 1;

async function loadNext() {
  const obj = document.createElement("object");
  obj.type = "image/svg+xml";
  obj.data = prefix + page + ext;

  obj.addEventListener("error", () => obj.remove());
  document.body.appendChild(obj);

  obj.addEventListener("load", () => {
    const doc = obj.contentDocument;
    if (doc && doc.querySelector("svg")) {
      const h = doc.querySelector("svg").getBoundingClientRect().height;
      if (h > 0) obj.style.height = h + "px";
    }
    page++;
    loadNext();
  });
}

loadNext();
