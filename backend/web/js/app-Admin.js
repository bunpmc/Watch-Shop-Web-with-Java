// JavaScript for switching main tabs (Orders, Products, Users)
const tabs = document.querySelectorAll(".tab-title"); // All main tabs
const tabContents = document.querySelectorAll(".tab-content"); // All main tab contents

tabs.forEach((tab) => {
  tab.addEventListener("click", () => {
    const targetId = tab.id.replace("-tab", ""); // Remove '-tab' to match with content IDs

    // Toggle tab button styles
    tabs.forEach((item) =>
      item.classList.remove("font-bold", "text-2xl", "bg-yellow-200")
    );
    tab.classList.add("font-bold", "text-2xl", "bg-yellow-200");

    // Show the correct tab content
    tabContents.forEach((content) => {
      if (content.id === targetId) {
        content.classList.add("active");
        content.classList.remove("hidden");
      } else {
        content.classList.remove("active");
        content.classList.add("hidden");
      }
    });
  });
});

// Initialize by showing the "Orders" tab
document.getElementById("orders-tab").click();

// JavaScript for switching sub-tabs (Add, List, Update) within the Products tab
const subTabs = document.querySelectorAll(".sub-tab-title"); // All sub-tabs (Add, List, Update)
const subTabContents = document.querySelectorAll(".sub-tab-content"); // All sub-tab contents

subTabs.forEach((tab) => {
  tab.addEventListener("click", () => {
    const targetId = tab.id.replace("-tab", ""); // Remove '-tab' to match with content IDs

    // Toggle sub-tab button styles
    subTabs.forEach((item) =>
      item.classList.remove("font-bold", "text-2xl", "bg-yellow-200")
    );
    tab.classList.add("font-bold", "text-2xl", "bg-yellow-200");

    // Show the correct sub-tab content
    subTabContents.forEach((content) => {
      if (content.id === targetId) {
        content.classList.add("active");
        content.classList.remove("hidden");
      } else {
        content.classList.remove("active");
        content.classList.add("hidden");
      }
    });
  });
});

// Initialize by showing the "Add" tab in Products
document.getElementById("add-product-tab").click();

function openUpdateModal(
  id,
  name,
  price,
  sold,
  stock,
  category,
  description,
  imgLink
) {
  // Populate the form with the product data
  document.getElementById("update-product-id").value = id;
  document.getElementById("update-product-name").value = name;
  document.getElementById("update-product-price").value = price;
  document.getElementById("update-product-stock").value = stock;
  document.getElementById("update-product-category").value = category;
  document.getElementById("update-product-description").value = description;
  document.getElementById("update-product-img").value = imgLink;

  // Open the modal
  document.getElementById("update-modal").classList.remove("hidden");
}

function closeUpdateModal() {
  // Close the modal
  document.getElementById("update-modal").classList.add("hidden");
}
