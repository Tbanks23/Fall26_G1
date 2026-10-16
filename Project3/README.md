# Project 3: Features, Personas, Scenarios, and User Stories

**Name:** Tyjah Banks  
**Course:** CSCI4221  
**Instructor / ScrumMaster:** Prof. Wanjun Hu  
**Product:** Student Task Tracker  
**Product owner and sole contributor:** Tyjah Banks  
**Sprint:** 3

I am continuing the Student Task Tracker from Projects 1 and 2. The app is intended to help college students organize assignments, track due dates, and identify unfinished work. This document defines three basic features and connects each one to a persona, scenario, and user story. These are requirements for development, not claims that working software has been implemented.

All items are assigned to me, with self-review. The personas are fictional design examples, not real interview participants. The accompanying [planning](minutes_1.md), [progress](minutes_2.md), and [final review](minutes_3.md) records form a clearly labeled simulated solo exercise. The assignment requires group meetings; acceptance of this individual simulation must be confirmed with the instructor.

## Section 1 Feature

### F1: Add and manage assignments
**Purpose:** Let students keep accurate assignment details in one place.

The student selects Add Assignment from the dashboard and enters a title, course, and due date. Saving creates an unfinished assignment and returns to the dashboard. The student can open an existing assignment to edit its details or delete it after confirmation. Cancel returns without saving changes.

**Rules:** Title, course, and a valid due date are required. Blank or whitespace-only titles and courses are rejected. The app explains missing information without clearing valid entries. Past dates are allowed so students can record overdue work. Deleting requires confirmation.

**Example:** A student adds “Essay outline,” selects or enters English, and sets the due date to October 22, 2026.

**Acceptance:** A valid assignment appears with the saved values. Editing changes the same record. Cancel leaves it unchanged. Confirmed deletion removes it; canceled deletion keeps it.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

### F2: View and filter upcoming assignments
**Purpose:** Help students decide what work needs attention first.

The dashboard lists titles, courses, due dates, and completion status. Students can filter by course, completion status, or both. Results are ordered from the earliest due date to the latest. With equal due dates, titles are ordered alphabetically for consistency. Summary counts describe all saved assignments, even when the list is filtered.

**Rules:** A course filter shows only matching assignments. A status filter shows unfinished or completed assignments. Combined filters must satisfy both conditions. Clearing filters restores the full list. A useful message appears when there are no assignments or no matches.

**Example:** A student selects CSCI4221 and To do to see unfinished computer science assignments in due-date order.

**Acceptance:** Filtering produces only matching records, keeps their due-date order, and does not delete or change saved assignments.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

### F3: Track completion and retain assignment information
**Purpose:** Help students distinguish finished work and keep their list between visits.

The student opens Edit Assignment, selects Mark as complete, and saves. The dashboard changes the status and updates the total, unfinished, and completed counts. Clearing the checkbox and saving reopens the assignment. The app is planned to retain assignment details and status in local browser storage.

**Rules:** New assignments begin as To do. Completing an assignment does not delete it. After a page refresh in the same browser, saved assignments and statuses should remain. If browser storage cannot be used, the app must explain that changes may not persist. Data does not automatically transfer to another device and can be removed by clearing browser data.

**Example:** After finishing an essay outline, a student marks it complete and later finds it under the Completed filter.

**Acceptance:** Saving completion updates the label, filters, and counts. Reopening reverses the status. With local storage available, saved records survive a refresh.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

## Section 2 Persona

### P1: Maya Robinson, first-year student
**Age:** 18. **Primary feature:** F1.

Maya is taking five courses and is still learning how to manage college deadlines. She usually checks schoolwork on her laptop. Assignment details are scattered across course pages and notes, so she sometimes forgets to write down a due date.

**Goal:** Put a new assignment into one reliable list as soon as she receives it.

**Frustration:** Complicated entry forms make her less likely to keep her list updated.

**Design implication:** Use a clear Add Assignment button, three required fields, and understandable validation messages. She should also be able to correct an entry easily.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

### P2: Andre Williams, working commuter student
**Age:** 22. **Primary feature:** F2.

Andre takes four courses, commutes to campus, and works part time. He uses short breaks on his laptop to plan his next study session. A long mixed list makes it difficult to see what is due first in the course he is currently studying.

**Goal:** Find the most urgent unfinished assignments for a selected course quickly.

**Frustration:** Time spent sorting through completed or unrelated work reduces his study time.

**Design implication:** Provide course and status filters together, keep due dates visible, and order the list by earliest due date.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

### P3: Jasmine Carter, senior student
**Age:** 23. **Primary feature:** F3.

Jasmine is balancing final-year coursework and job applications. She plans assignments on her personal laptop and often returns to her list after closing the browser. When completed work stays mixed with unfinished work, she has trouble judging what remains.

**Goal:** Keep an accurate record of finished assignments and retain that information between visits.

**Frustration:** Losing a list after a refresh or seeing unclear status labels makes the tracker unreliable.

**Design implication:** Make completion reversible, update counts consistently, and save assignment data in the same browser with clear storage limitations.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

## Section 3 Scenario

### SC1: Maya records a new assignment
**Related persona:** P1. **Related feature:** F1.

After class, Maya checks the course page and finds an essay outline due October 22. She opens Student Task Tracker on her laptop and selects Add Assignment. She enters “Essay outline” and English but initially leaves the due date empty. The app explains that a date is required and keeps her other entries. She enters October 22, 2026, saves, and sees the new item on the dashboard with To do status.

Later, the instructor changes the deadline to October 23. Maya opens Edit, changes the date, and saves. The original assignment is updated rather than duplicated.

**Outcome:** Maya has one accurate assignment record she can find and update.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

### SC2: Andre plans a short study session
**Related persona:** P2. **Related feature:** F2.

Andre has 45 minutes before his next work shift. His tracker contains assignments from several courses, including completed work. He opens the dashboard, selects CSCI4221, and selects To do. Only unfinished assignments for that course remain visible, ordered by due date. He chooses the earliest task to work on. Before leaving, he clears the filters and sees the full list again.

If no assignments match, the app shows a no-results message so Andre can adjust the filters instead of assuming the data was deleted.

**Outcome:** Andre quickly identifies the next relevant assignment without changing any stored records.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

### SC3: Jasmine updates her progress and returns later
**Related persona:** P3. **Related feature:** F3.

Jasmine finishes an assignment and opens its Edit screen. She selects Mark as complete and saves. The dashboard now shows it as Completed, and the unfinished count decreases by one. She refreshes the page in the same browser and sees that the saved status remains. She uses the Completed filter to check the finished work.

When she realizes the assignment needs another revision, she opens Edit again, clears the checkbox, and saves. It returns to To do, and the counts adjust.

**Outcome:** Jasmine can trust the list to reflect her current work and can correct a completion mistake.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

## Section 4 User story

### US1: Save a new assignment
**Story:** As a student, I want to save an assignment with its title, course, and due date so that I can keep track of what I need to finish.

**Links:** F1, P1, SC1. **Priority:** High.

**Acceptance criteria:**
1. Given the Add Assignment screen, when I enter all three valid fields and save, then one new assignment appears with To do status.
2. Given a missing or invalid required field, when I try to save, then the app explains the problem and preserves the valid entries.
3. Given an unsaved form, when I select Cancel, then no assignment is added.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

### US2: Find unfinished work for a course
**Story:** As a working student, I want to filter unfinished assignments by course and see the earliest deadline first so that I can use my limited study time effectively.

**Links:** F2, P2, SC2. **Priority:** High.

**Acceptance criteria:**
1. Given assignments from multiple courses, when I select a course and To do, then only unfinished assignments from that course appear.
2. Given multiple matching assignments, then the results are ordered from earliest due date to latest.
3. Given no matching assignments, then a clear no-results message appears.
4. When I clear both filters, then the full list returns without changes to the saved records.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

### US3: Save and reverse completion status
**Story:** As a student, I want to mark an assignment complete and keep that status when I return so that I can tell which work still needs attention.

**Links:** F3, P3, SC3. **Priority:** High.

**Acceptance criteria:**
1. Given an unfinished assignment, when I check Mark as complete and save, then its status becomes Completed and the counts update.
2. Given available local browser storage, when I refresh the page, then the saved assignment and completion status remain.
3. Given a completed assignment, when I clear the checkbox and save, then it returns to To do and the counts update.
4. Given storage is unavailable, then the app clearly explains that the changes may not survive a refresh.

**Assigned:** Tyjah Banks. **Reviewer:** Tyjah Banks, self-review.

The three user stories cover the main paths for the three features. Supporting editing, deletion, and storage behavior is specified in Section 1. Implementation and functional test results are not part of these written records.
