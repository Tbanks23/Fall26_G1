# Student Task Tracker: Prototype Design

Prepared for Tyjah Banks | CSCI4221 | Project 2 | Sprint 2

## 1. Intended users
The main users are college students managing assignments across several courses. A first-time user needs a clear way to add the first assignment. A returning user needs to check deadlines, update details, and identify completed work. These are usage situations for the same student role; no teacher or administrator account is planned.

## 2. Main dashboard
File: `prototypes/dashboard.png`

The dashboard shows assignment titles, courses, due dates, status, and an Edit action. Summary cards show total, unfinished, and completed assignments. Course and status filters help students narrow the list. Assignments are ordered by earliest due date. Summary cards describe all saved assignments, while filters affect the list.

Selecting Add assignment opens the entry screen. Selecting Edit opens the selected assignment's editing screen. In the planned empty state, the dashboard will say, "No assignments yet. Add your first assignment." When filters produce no results, it will say, "No assignments match these filters."

## 3. Add Assignment screen
File: `prototypes/add.png`

The student enters an assignment title, course, and due date. All three fields are required. Save assignment is intended to create a new item with the status To do and return to the dashboard. Cancel or Back to dashboard returns without saving.

The planned implementation will reject blank or whitespace-only titles and courses and require a valid date. Errors will appear next to the relevant field without clearing valid entries. Earlier dates may be entered to track overdue assignments.

## 4. Edit Assignment screen
File: `prototypes/edit.png`

The screen displays the chosen assignment's existing values. The student can change the title, course, or due date and use Mark as complete to change its status. Save changes applies the edits and returns to the dashboard. Clearing the completion checkbox returns a completed assignment to To do. Cancel discards unsaved changes.

Delete assignment is intended to open a confirmation asking, "Delete this assignment?" Confirming removes it and returns to the dashboard. Canceling deletion keeps the item. The confirmation dialog is described here and is not a separate prototype image.

## 5. Main user flow
1. Open the dashboard.
2. Select Add assignment.
3. Enter a title, course, and due date, then save.
4. Find the assignment on the dashboard, optionally using filters.
5. Select Edit to update it, complete it, or request deletion.
6. Return to the dashboard to see the updated list and counts.

## 6. Design choices
A consistent sidebar and clear page titles help students know where they are. Blue identifies primary actions. Status labels use both words and color. Labels remain visible above form fields. Delete is visually separate from Save to reduce accidental selection. No login screen is included because accounts are outside the agreed initial scope.

The final application should support keyboard navigation, visible focus indicators, accessible form labels, and a layout that adapts to smaller screens. These behaviors are planned requirements, not verified capabilities of the static images.

## 7. Data and later implementation
Each assignment will have an identifier, title, course, due date, and completion status. The planned app will store data locally in the current browser. Data will not automatically synchronize across devices and may be lost if browser storage is cleared. Project 2 documents the design; persistent storage and working controls are future implementation tasks.

## 8. Prototype limitations
These images demonstrate three main screens. Filters, saving, navigation, deletion confirmation, validation errors, empty states, and browser storage are explained but are not interactive. The sample dates in the images are not the official project deadline.
