// FOR DYNAMIC DATA FETCH
// Function to fetch schedule data using AJAX
function fetchScheduleData() {
  // Replace 'schedule-data-endpoint' with the actual URL of your server-side endpoint
  fetch("schedule-data-endpoint")
    .then((response) => response.json())
    .then((data) => {
      // Call function to populate the table with fetched data
      populateScheduleTable(data);
    })
    .catch((error) => {
      console.error("Error fetching schedule data:", error);
    });
}

// Function to populate the schedule table with data
function populateScheduleTable(data) {
  // Get reference to the table body
  const tbody = document.getElementById("schedule-body");

  // Clear any existing rows
  tbody.innerHTML = "";

  // Loop through the data and create table rows
  data.forEach((rowData) => {
    const row = document.createElement("tr");

    // Loop through each day's event and create table cells
    [
      "date",
      "sunday",
      "monday",
      "tuesday",
      "wednesday",
      "thursday",
      "saturday",
    ].forEach((day) => {
      const cell = document.createElement("td");
      cell.textContent = rowData[day];
      row.appendChild(cell);
    });

    // Append the row to the table body
    tbody.appendChild(row);
  });
}

// Call the fetchScheduleData function to fetch and populate the table on page load
document.addEventListener("DOMContentLoaded", fetchScheduleData);
