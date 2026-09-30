INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Bootstrap', 'What is Bootstrap?', 'A programming language', 'A CSS framework', 'A database', 'An operating system', 'B', 'Easy',
 'Bootstrap is a popular front-end framework used to build responsive and mobile-first websites.'),

-- Q2
('Bootstrap', 'Which company originally developed Bootstrap?', 'Google', 'Microsoft', 'Twitter', 'Facebook', 'C', 'Easy',
 'Bootstrap was originally developed at Twitter.'),

-- Q3
('Bootstrap', 'Which class creates a Bootstrap container with a fixed maximum width?', '.container', '.container-fluid', '.row', '.wrapper', 'A', 'Easy',
 'The .container class provides a responsive fixed-width container.'),

-- Q4
('Bootstrap', 'Which JavaScript library dependency was removed in Bootstrap 5?', 'React', 'jQuery', 'Angular', 'Vue', 'B', 'Hard',
 'Bootstrap 5 removed its dependency on jQuery and uses vanilla JavaScript.'),

-- Q5
('Bootstrap', 'Which class creates a full-width container?', '.container', '.container-fluid', '.container-full', '.fluid', 'B', 'Easy',
 'The .container-fluid class creates a container that spans the full width of the viewport.'),

-- Q6
('Bootstrap', 'Which class is used to create a row in the Bootstrap grid?', '.grid', '.row', '.container-row', '.col', 'B', 'Easy',
 'The .row class creates a horizontal group of columns in the Bootstrap grid.'),

-- Q7
('Bootstrap', 'Which class is used to create a column?', '.column', '.col', '.grid-col', '.cell', 'B', 'Easy',
 'The .col class is used to create columns in the Bootstrap grid.'),

-- Q8
('Bootstrap', 'How many columns does the Bootstrap grid system contain?', '6', '8', '10', '12', 'D', 'Easy',
 'Bootstrap uses a 12-column grid system.'),

-- Q9
('Bootstrap', 'Which class centers text horizontally?', '.text-middle', '.text-center', '.center-text', '.align-center', 'B', 'Easy',
 'The .text-center class centers text horizontally.'),

-- Q10
('Bootstrap', 'Which class makes an image responsive?', '.img-responsive', '.responsive-img', '.img-fluid', '.image-fluid', 'C', 'Easy',
 'The .img-fluid class applies max-width: 100% and height: auto to images.'),

-- Q11
('Bootstrap', 'Which class makes an image circular?', '.img-circle', '.rounded-circle', '.circle-img', '.img-rounded-circle', 'B', 'Easy',
 'The .rounded-circle class makes an element circular when its dimensions allow it.'),

-- Q12
('Bootstrap', 'Which class adds rounded corners to an element?', '.rounded', '.round', '.border-radius', '.corner', 'A', 'Easy',
 'The .rounded class adds a border-radius to an element.'),

-- Q13
('Bootstrap', 'Which class adds a shadow to an element?', '.box-shadow', '.shadow', '.element-shadow', '.shadow-box', 'B', 'Easy',
 'The .shadow class adds a box shadow to an element.'),

-- Q14
('Bootstrap', 'Which class hides an element?', '.hide', '.hidden', '.d-none', '.display-none', 'C', 'Easy',
 'The .d-none class sets display: none and hides an element.'),

-- Q15
('Bootstrap', 'Which class makes an element a block-level flex container?', '.d-block-flex', '.d-flex', '.flex-block', '.display-flex', 'B', 'Easy',
 'The .d-flex class sets display: flex.'),

-- Q16
('Bootstrap', 'Which class sets display to block?', '.d-block', '.display-block', '.block', '.show-block', 'A', 'Easy',
 'The .d-block class sets display: block.'),

-- Q17
('Bootstrap', 'Which class sets display to inline?', '.inline', '.d-inline', '.display-inline', '.inline-element', 'B', 'Easy',
 'The .d-inline class sets display: inline.'),

-- Q18
('Bootstrap', 'Which class sets display to inline-block?', '.inline-block', '.d-inline-block', '.display-inline-block', '.d-block-inline', 'B', 'Easy',
 'The .d-inline-block class sets display: inline-block.'),

-- Q19
('Bootstrap', 'Which class adds margin?', '.margin', '.m-3', '.margin-3', '.space-3', 'B', 'Easy',
 'Bootstrap spacing utilities such as .m-3 add margin.'),

-- Q20
('Bootstrap', 'Which class adds padding?', '.padding', '.p-3', '.pad-3', '.space-padding', 'B', 'Easy',
 'Bootstrap spacing utilities such as .p-3 add padding.'),

-- Q21
('Bootstrap', 'What does the Bootstrap class .mt-3 represent?', 'Margin top', 'Margin bottom', 'Padding top', 'Padding bottom', 'A', 'Easy',
 'The mt utility represents margin-top and 3 is the spacing value.'),

-- Q22
('Bootstrap', 'What does the class .mb-3 represent?', 'Margin left', 'Margin right', 'Margin bottom', 'Padding bottom', 'C', 'Easy',
 'The mb utility represents margin-bottom.'),

-- Q23
('Bootstrap', 'What does the class .ms-3 represent in Bootstrap 5?', 'Margin start', 'Margin top', 'Margin side', 'Margin small', 'A', 'Easy',
 'The ms utility represents margin-start in Bootstrap 5.'),

-- Q24
('Bootstrap', 'What does the class .me-3 represent?', 'Margin end', 'Margin extra', 'Margin element', 'Margin top', 'A', 'Easy',
 'The me utility represents margin-end.'),

-- Q25
('Bootstrap', 'Which class adds a border to an element?', '.border', '.border-add', '.add-border', '.outline', 'A', 'Easy',
 'The .border utility adds a border to an element.'),

-- Q26
('Bootstrap', 'Which class removes all borders?', '.border-none', '.no-border', '.border-0', '.remove-border', 'C', 'Easy',
 'The .border-0 utility removes borders.'),

-- Q27
('Bootstrap', 'Which class changes text color to primary?', '.text-primary', '.primary-text', '.color-primary', '.text-blue', 'A', 'Easy',
 'The .text-primary class applies the primary theme color to text.'),

-- Q28
('Bootstrap', 'Which class changes background color to primary?', '.background-primary', '.bg-primary', '.primary-bg', '.bg-blue', 'B', 'Easy',
 'The .bg-primary class applies the primary background color.'),

-- Q29
('Bootstrap', 'Which class makes text bold?', '.font-bold', '.fw-bold', '.text-bold', '.bold', 'B', 'Easy',
 'The .fw-bold class applies a bold font weight.'),

-- Q30
('Bootstrap', 'Which class makes text italic?', '.italic', '.font-italic', '.fst-italic', '.text-italic', 'C', 'Easy',
 'The .fst-italic class applies italic font style.'),

-- Q31
('Bootstrap', 'Which class underlines text?', '.text-underline', '.underline', '.text-decoration-underline', '.decoration-underline', 'C', 'Easy',
 'The .text-decoration-underline class underlines text.'),

-- Q32
('Bootstrap', 'Which class removes text decoration?', '.text-decoration-none', '.no-decoration', '.text-none', '.decoration-none', 'A', 'Easy',
 'The .text-decoration-none class removes text decoration.'),

-- Q33
('Bootstrap', 'Which class creates a primary colored button?', '.button-primary', '.btn-primary', '.primary-button', '.btn-blue', 'B', 'Easy',
 'The .btn-primary class creates a primary styled Bootstrap button.'),

-- Q34
('Bootstrap', 'Which class creates a success button?', '.btn-success', '.button-success', '.success-btn', '.btn-green', 'A', 'Easy',
 'The .btn-success class creates a success styled button.'),

-- Q35
('Bootstrap', 'Which class creates a danger button?', '.btn-danger', '.danger-button', '.button-danger', '.btn-red', 'A', 'Easy',
 'The .btn-danger class creates a danger styled button.'),

-- Q36
('Bootstrap', 'Which class creates a warning button?', '.btn-warning', '.warning-button', '.button-warning', '.btn-yellow', 'A', 'Easy',
 'The .btn-warning class creates a warning styled button.'),

-- Q37
('Bootstrap', 'Which class creates a warning colored button?', '.btn-alert', '.btn-warning', '.warning-btn', '.button-alert', 'B', 'Easy',
 'The .btn-warning class creates a warning colored button.'),

-- Q38
('Bootstrap', 'Which class creates a large button?', '.btn-large', '.btn-lg', '.button-lg', '.large-btn', 'B', 'Easy',
 'The .btn-lg class creates a larger Bootstrap button.'),

-- Q39
('Bootstrap', 'Which class creates a small button?', '.btn-small', '.btn-sm', '.button-sm', '.small-btn', 'B', 'Easy',
 'The .btn-sm class creates a smaller Bootstrap button.'),

-- Q40
('Bootstrap', 'Which class makes a button span the full width of its parent?', '.btn-full', '.w-100', '.btn-block', '.full-button', 'B', 'Easy',
 'The .w-100 utility sets the button width to 100 percent.'),

-- Q41
('Bootstrap', 'Which class creates an outlined primary button?', '.btn-outline-primary', '.btn-primary-outline-only', '.outline-btn-primary', '.btn-border-primary', 'A', 'Easy',
 'The .btn-outline-primary class creates a button with a primary outline.'),

-- Q42
('Bootstrap', 'Which class creates a link-style button?', '.btn-link', '.button-link', '.link-btn', '.btn-text', 'A', 'Easy',
 'The .btn-link class makes a button appear like a link.'),

-- Q43
('Bootstrap', 'Which class is used with a button element to apply Bootstrap button styling?', '.button', '.btn', '.bootstrap-button', '.button-style', 'B', 'Easy',
 'The .btn class is the base Bootstrap button class.'),

-- Q44
('Bootstrap', 'Which class creates a light colored button?', '.btn-light', '.light-button', '.button-light', '.btn-white', 'A', 'Easy',
 'The .btn-light class creates a light button.'),

-- Q45
('Bootstrap', 'Which class creates a dark colored button?', '.btn-dark', '.dark-button', '.button-dark', '.btn-black', 'A', 'Easy',
 'The .btn-dark class creates a dark button.'),

-- Q46
('Bootstrap', 'Which class creates a secondary colored button?', '.btn-secondary', '.secondary-button', '.button-secondary', '.btn-gray', 'A', 'Easy',
 'The .btn-secondary class creates a secondary button.'),

-- Q47
('Bootstrap', 'Which class makes a button disabled?', 'disabled', '.disabled-button', '.btn-disabled', '.button-off', 'A', 'Easy',
 'The disabled attribute disables a native button element.'),

-- Q48
('Bootstrap', 'Which class creates a group of buttons?', '.button-group', '.btn-group', '.group-buttons', '.buttons-group', 'B', 'Easy',
 'The .btn-group class groups buttons together.'),

-- Q49
('Bootstrap', 'Which class creates a vertical button group?', '.btn-group-vertical', '.vertical-btn-group', '.btn-vertical', '.group-vertical', 'A', 'Easy',
 'The .btn-group-vertical class arranges grouped buttons vertically.'),

-- Q50
('Bootstrap', 'Which class creates a spinner loading indicator?', '.loading', '.spinner-border', '.loader', '.spinner', 'B', 'Easy',
 'The .spinner-border class creates a Bootstrap border spinner.'),

-- Q51
('Bootstrap', 'How many columns are in the Bootstrap grid?', '8', '10', '12', '16', 'C', 'Easy',
 'Bootstrap uses a 12-column grid system.'),

-- Q52
('Bootstrap', 'Which class defines a Bootstrap row?', '.row', '.grid-row', '.container-row', '.r', 'A', 'Easy',
 'The .row class defines a row in the Bootstrap grid.'),

-- Q53
('Bootstrap', 'Which class creates an automatically sized column?', '.col', '.auto-col', '.column-auto', '.col-auto', 'D', 'Easy',
 'The .col-auto class sizes a column based on the natural width of its content.'),

-- Q54
('Bootstrap', 'Which class creates a column that takes 6 of 12 columns?', '.col-6', '.column-6', '.col-half', '.size-6', 'A', 'Easy',
 'The .col-6 class takes half of the 12-column grid.'),

-- Q55
('Bootstrap', 'What percentage of the row does .col-3 occupy?', '10%', '25%', '33%', '50%', 'B', 'Easy',
 '3 out of 12 columns equals 25%.'),

-- Q56
('Bootstrap', 'What percentage of the row does .col-4 occupy?', '25%', '33.33%', '50%', '66.66%', 'B', 'Easy',
 '4 out of 12 columns equals approximately 33.33%.'),

-- Q57
('Bootstrap', 'Which class creates a column that occupies 8 of 12 columns?', '.col-8', '.col-6', '.col-10', '.col-4', 'A', 'Medium',
 'The .col-8 class occupies 8 of the 12 grid columns.'),

-- Q58
('Bootstrap', 'Which class creates a column that occupies 9 of 12 columns?', '.col-9', '.col-3', '.col-6', '.col-12', 'A', 'Medium',
 'The .col-9 class occupies 9 of the 12 grid columns.'),

-- Q59
('Bootstrap', 'Which class makes a column full width?', '.col-full', '.col-12', '.full-col', '.col-100', 'B', 'Easy',
 'The .col-12 class spans all 12 grid columns.'),

-- Q60
('Bootstrap', 'Which breakpoint prefix is used for small devices?', '.sm', '.small', '.col-sm', '.break-sm', 'C', 'Easy',
 'The sm breakpoint prefix is used in classes such as .col-sm-6.'),

-- Q61
('Bootstrap', 'Which breakpoint prefix is used for extra-extra-large screens?', '.xxl', '.extra-xl', '.col-xxl', '.xxlarge', 'C', 'Hard',
 'Bootstrap 5.0 introduced the xxl breakpoint, represented by the xxl infix.'),

-- Q62
('Bootstrap', 'Which breakpoint prefix is used for extra-large screens?', '.xl', '.extra-large', '.col-xl', '.large-xl', 'C', 'Easy',
 'The xl breakpoint is represented by classes such as .col-xl-6.'),

-- Q63
('Bootstrap', 'Which breakpoint prefix is used for large screens?', '.large', '.lg', '.col-lg', '.break-lg', 'C', 'Easy',
 'The lg breakpoint is represented by classes such as .col-lg-6.'),

-- Q64
('Bootstrap', 'Which breakpoint prefix is used for medium screens?', '.medium', '.md', '.col-md', '.break-md', 'C', 'Easy',
 'The md breakpoint is represented by classes such as .col-md-6.'),

-- Q65
('Bootstrap', 'Which class creates a responsive column that is 6 columns wide on medium screens and above?', '.col-6-md', '.col-md-6', '.md-col-6', '.responsive-md-6', 'B', 'Medium',
 'The .col-md-6 class applies a 6-column width from the md breakpoint upward.'),

-- Q66
('Bootstrap', 'Which class stacks columns on extra-small screens and places them side by side from medium screens?', '.col-md-6', '.col-sm-6', '.col-lg-6', '.col-xl-6', 'A', 'Easy',
 'Using .col-md-6 makes columns stack below md and occupy half width from md upward.'),

-- Q67
('Bootstrap', 'Which class creates equal-width columns at all breakpoints?', '.col', '.col-12', '.equal-columns', '.columns', 'A', 'Easy',
 'The .col class creates flexible equal-width columns.'),

-- Q68
('Bootstrap', 'Which class controls horizontal alignment of flex items?', '.justify-content-*', '.align-items-*', '.flex-horizontal-*', '.horizontal-*', 'A', 'Medium',
 'The justify-content utilities control horizontal alignment along the main axis.'),

-- Q69
('Bootstrap', 'Which class controls vertical alignment of flex items?', '.justify-content-*', '.align-items-*', '.vertical-align-*', '.flex-vertical-*', 'B', 'Medium',
 'The align-items utilities control alignment on the cross axis.'),

-- Q70
('Bootstrap', 'Which class centers flex items horizontally?', '.align-items-center', '.justify-content-center', '.text-center', '.center-flex', 'B', 'Medium',
 'For a row flex container, .justify-content-center centers items horizontally.'),

-- Q71
('Bootstrap', 'Which class centers flex items vertically?', '.justify-content-center', '.align-items-center', '.vertical-center', '.flex-center-y', 'B', 'Medium',
 'The .align-items-center utility centers items on the cross axis.'),

-- Q72
('Bootstrap', 'Which Bootstrap utilities can change an element''s display at different breakpoints?', 'Responsive display utilities', 'Grid utilities only', 'Color utilities', 'Spacing utilities', 'A', 'Medium',
 'Bootstrap responsive display utilities such as .d-none and .d-md-block can change display based on breakpoints.'),

-- Q73
('Bootstrap', 'Which class hides an element only on medium and larger screens?', '.d-md-none', '.d-none-md', '.hide-md', '.md-hidden', 'A', 'Medium',
 'The .d-md-none class sets display:none from the md breakpoint upward.'),

-- Q74
('Bootstrap', 'Which class shows an element as block on medium screens and larger?', '.d-block-md', '.d-md-block', '.md-d-block', '.show-md-block', 'B', 'Medium',
 'The .d-md-block class displays an element as block from the md breakpoint upward.'),

-- Q75
('Bootstrap', 'Which class makes an element flex only on large screens and above?', '.d-lg-flex', '.lg-flex', '.flex-lg', '.display-lg-flex', 'A', 'Medium',
 'The .d-lg-flex utility applies display:flex from the lg breakpoint upward.'),

-- Q76
('Bootstrap', 'Which class makes a flex container use a column direction?', '.flex-column', '.flex-direction-column', '.column-flex', '.d-flex-column', 'A', 'Easy',
 'The .flex-column class sets flex-direction: column.'),

-- Q77
('Bootstrap', 'Which class makes a flex container use a row direction?', '.flex-row', '.row-flex', '.flex-direction-row', '.d-flex-row', 'A', 'Easy',
 'The .flex-row class sets flex-direction: row.'),

-- Q78
('Bootstrap', 'Which class allows flex items to wrap?', '.flex-wrap', '.wrap-flex', '.flex-items-wrap', '.wrap', 'A', 'Easy',
 'The .flex-wrap class sets flex-wrap: wrap.'),

-- Q79
('Bootstrap', 'Which class prevents flex items from wrapping?', '.no-wrap', '.flex-nowrap', '.nowrap-flex', '.flex-no-wrap', 'B', 'Easy',
 'The .flex-nowrap class prevents flex items from wrapping.'),

-- Q80
('Bootstrap', 'Which class pushes flex items to the end of the main axis?', '.justify-content-end', '.align-items-end', '.flex-end', '.end-items', 'A', 'Medium',
 'The .justify-content-end class aligns flex items at the end of the main axis.'),

-- Q81
('Bootstrap', 'Which class distributes flex items with equal space around them?', '.justify-content-around', '.justify-content-between', '.space-around', '.flex-around', 'A', 'Medium',
 'The .justify-content-around utility distributes equal space around flex items.'),

-- Q82
('Bootstrap', 'Which class distributes flex items with equal space between them?', '.justify-content-around', '.justify-content-between', '.space-between', '.flex-between', 'B', 'Medium',
 'The .justify-content-between utility places equal space between flex items.'),

-- Q83
('Bootstrap', 'Which class makes an element sticky positioned?', '.position-sticky', '.sticky', '.sticky-position', '.fixed-sticky', 'A', 'Medium',
 'The .position-sticky utility applies position: sticky.'),

-- Q84
('Bootstrap', 'Which class fixes an element to the top of the viewport?', '.fixed-top', '.position-top', '.top-fixed', '.sticky-top-fixed', 'A', 'Easy',
 'The .fixed-top class fixes an element to the top of the viewport.'),

-- Q85
('Bootstrap', 'Which class fixes an element to the bottom of the viewport?', '.fixed-bottom', '.bottom-fixed', '.position-bottom', '.sticky-bottom', 'A', 'Easy',
 'The .fixed-bottom class fixes an element to the bottom of the viewport.'),

-- Q86
('Bootstrap', 'Which class makes an element sticky at the top?', '.sticky-top', '.fixed-top', '.top-sticky', '.position-sticky-top', 'A', 'Easy',
 'The .sticky-top class makes an element sticky at the top while scrolling.'),

-- Q87
('Bootstrap', 'Which class controls an element''s width at 100%?', '.width-100', '.w-100', '.width-full', '.full-width', 'B', 'Easy',
 'The .w-100 utility sets width to 100%.'),

-- Q88
('Bootstrap', 'Which class controls an element''s height at 100%?', '.height-100', '.h-100', '.height-full', '.full-height', 'B', 'Easy',
 'The .h-100 utility sets height to 100%.'),

-- Q89
('Bootstrap', 'Which class makes an element have 50% width?', '.w-50', '.width-half', '.half-width', '.width-50', 'A', 'Easy',
 'The .w-50 utility sets width to 50%.'),

-- Q90
('Bootstrap', 'Which class makes an element have 25% width?', '.w-25', '.width-quarter', '.quarter-width', '.width-25', 'A', 'Easy',
 'The .w-25 utility sets width to 25%.'),

-- Q91
('Bootstrap', 'Which class adds horizontal auto margins?', '.mx-auto', '.margin-auto-x', '.m-auto-x', '.auto-margin-x', 'A', 'Easy',
 'The .mx-auto utility sets margin-left and margin-right to auto.'),

-- Q92
('Bootstrap', 'Which class is commonly used to center a fixed-width block element horizontally?', '.mx-auto', '.text-center', '.center-block', '.justify-center', 'A', 'Medium',
 'The .mx-auto utility applies auto horizontal margins, which can center a block with a defined width.'),

-- Q93
('Bootstrap', 'Which class sets text to lowercase?', '.text-lower', '.text-lowercase', '.lowercase', '.text-smallcase', 'B', 'Easy',
 'The .text-lowercase class transforms text to lowercase.'),

-- Q94
('Bootstrap', 'Which class transforms text to uppercase?', '.text-uppercase', '.uppercase-text', '.text-upper', '.upper-text', 'A', 'Medium',
 'The .text-uppercase utility transforms text to uppercase.'),

-- Q95
('Bootstrap', 'Which class capitalizes text?', '.text-capitalize', '.capitalize', '.text-cap', '.capital-text', 'A', 'Easy',
 'The .text-capitalize utility capitalizes the first letter of each word.'),

-- Q96
('Bootstrap', 'Which class truncates text with an ellipsis when supported by the layout?', '.text-truncate', '.truncate-text', '.ellipsis', '.text-ellipsis', 'A', 'Medium',
 'The .text-truncate class truncates overflowing text with an ellipsis under appropriate conditions.'),

-- Q97
('Bootstrap', 'Which class prevents text from wrapping?', '.text-nowrap', '.nowrap-text', '.no-wrap-text', '.text-no-wrap', 'A', 'Easy',
 'The .text-nowrap class prevents text from wrapping.'),

-- Q98
('Bootstrap', 'Which class controls text alignment?', '.text-*', '.align-text-*', '.font-align-*', '.text-align-*', 'A', 'Easy',
 'Bootstrap provides text alignment utilities such as .text-start, .text-center and .text-end.'),

-- Q99
('Bootstrap', 'Which class aligns text to the end in Bootstrap 5?', '.text-right', '.text-end', '.align-end-text', '.text-last', 'B', 'Easy',
 'Bootstrap 5 uses .text-end instead of the older .text-right class.'),

-- Q100
('Bootstrap', 'Which Bootstrap utility controls font size?', '.fs-*', '.font-*', '.font-size-*', '.text-size-*', 'A', 'Medium',
 'Bootstrap provides font-size utilities using the .fs-* classes.'),

-- Q101
('Bootstrap', 'Which class creates primary colored text?', '.text-primary', '.primary-text', '.color-primary', '.primary-color-text', 'A', 'Easy',
 'The .text-primary class applies the primary text color.'),

-- Q102
('Bootstrap', 'Which class creates secondary colored text?', '.text-secondary', '.secondary-text', '.color-secondary', '.text-gray', 'A', 'Easy',
 'The .text-secondary class applies the secondary theme color.'),

-- Q103
('Bootstrap', 'Which class creates success colored text?', '.text-success', '.success-text', '.color-success', '.text-green', 'A', 'Easy',
 'The .text-success class applies the success color.'),

-- Q104
('Bootstrap', 'Which class creates danger colored text?', '.text-danger', '.danger-text', '.color-danger', '.text-red', 'A', 'Easy',
 'The .text-danger class applies the danger color.'),

-- Q105
('Bootstrap', 'Which class creates warning colored text?', '.text-warning', '.warning-text', '.color-warning', '.text-yellow', 'A', 'Easy',
 'The .text-warning class applies the warning color.'),

-- Q106
('Bootstrap', 'Which class creates light colored text?', '.text-light', '.light-text', '.color-light', '.text-white-light', 'A', 'Easy',
 'The .text-light class applies the light theme color.'),

-- Q107
('Bootstrap', 'Which class creates dark colored text?', '.text-dark', '.dark-text', '.color-dark', '.text-black', 'A', 'Easy',
 'The .text-dark class applies the dark theme color.'),

-- Q108
('Bootstrap', 'Which class creates white text?', '.text-white', '.white-text', '.color-white', '.text-light-white', 'A', 'Easy',
 'The .text-white class applies white text color.'),

-- Q109
('Bootstrap', 'Which class applies the primary text color?', '.text-primary', '.text-main', '.primary-color', '.color-primary-text', 'A', 'Easy',
 'The .text-primary class applies the primary theme text color.'),

-- Q110
('Bootstrap', 'Which class applies a light background color?', '.bg-light', '.background-light', '.light-bg', '.bg-white-light', 'A', 'Easy',
 'The .bg-light class applies a light background color.'),

-- Q111
('Bootstrap', 'Which class applies a dark background color?', '.bg-dark', '.background-dark', '.dark-bg', '.bg-black', 'A', 'Easy',
 'The .bg-dark class applies a dark background color.'),

-- Q112
('Bootstrap', 'Which class applies a primary background color?', '.bg-primary', '.primary-bg', '.background-primary', '.bg-main', 'A', 'Easy',
 'The .bg-primary class applies the primary background color.'),

-- Q113
('Bootstrap', 'Which class applies a success background color?', '.bg-success', '.success-bg', '.background-success', '.bg-green', 'A', 'Easy',
 'The .bg-success class applies the success background color.'),

-- Q114
('Bootstrap', 'Which class applies a danger background color?', '.bg-danger', '.danger-bg', '.background-danger', '.bg-red', 'A', 'Easy',
 'The .bg-danger class applies the danger background color.'),

-- Q115
('Bootstrap', 'Which class applies a warning background color?', '.bg-warning', '.warning-bg', '.background-warning', '.bg-yellow', 'A', 'Easy',
 'The .bg-warning class applies the warning background color.'),

-- Q116
('Bootstrap', 'Which class applies a secondary background color?', '.bg-secondary', '.secondary-bg', '.background-secondary', '.bg-gray', 'A', 'Easy',
 'The .bg-secondary class applies the secondary background color.'),

-- Q117
('Bootstrap', 'Which class applies a light background?', '.bg-light', '.background-light', '.light-background', '.bg-pale', 'A', 'Easy',
 'The .bg-light class applies a light background color.'),

-- Q118
('Bootstrap', 'Which class applies a white background?', '.bg-white', '.white-bg', '.background-white', '.bg-light-white', 'A', 'Easy',
 'The .bg-white class applies a white background color.'),

-- Q119
('Bootstrap', 'Which class removes an element''s background color?', '.bg-transparent', '.background-none', '.no-bg', '.bg-none', 'A', 'Easy',
 'The .bg-transparent class makes the background transparent.'),

-- Q120
('Bootstrap', 'Which class adds a subtle shadow?', '.shadow-sm', '.small-shadow', '.shadow-small', '.sm-shadow', 'A', 'Easy',
 'The .shadow-sm class adds a small shadow.'),

-- Q121
('Bootstrap', 'Which class adds a larger shadow?', '.shadow-lg', '.large-shadow', '.shadow-large', '.lg-shadow', 'A', 'Easy',
 'The .shadow-lg class adds a larger shadow.'),

-- Q122
('Bootstrap', 'Which class removes shadow?', '.shadow-none', '.no-shadow', '.shadow-0', '.remove-shadow', 'A', 'Easy',
 'The .shadow-none class removes box shadow.'),

-- Q123
('Bootstrap', 'Which class adds rounded corners?', '.rounded', '.round-corners', '.border-round', '.radius', 'A', 'Easy',
 'The .rounded utility applies border-radius.'),

-- Q124
('Bootstrap', 'Which class creates fully rounded corners?', '.rounded-pill', '.rounded-full', '.pill-radius', '.fully-rounded', 'A', 'Easy',
 'The .rounded-pill class creates pill-shaped rounded corners.'),

-- Q125
('Bootstrap', 'Which class adds a standard box shadow?', '.shadow', '.box-shadow', '.shadow-md', '.standard-shadow', 'A', 'Easy',
 'The .shadow class adds a box shadow to an element.'),

-- Q126
('Bootstrap', 'Which class controls opacity?', '.opacity-*', '.transparent-*', '.alpha-*', '.visibility-*', 'A', 'Easy',
 'Bootstrap provides opacity utilities such as .opacity-25, .opacity-50, .opacity-75 and .opacity-100.'),

-- Q127
('Bootstrap', 'Which class makes an element 50% opaque?', '.opacity-50', '.opacity-half', '.transparent-50', '.alpha-50', 'A', 'Easy',
 'The .opacity-50 class sets opacity to 0.5.'),

-- Q128
('Bootstrap', 'Which class makes an element fully opaque?', '.opacity-100', '.fully-visible', '.opaque', '.opacity-full', 'A', 'Easy',
 'The .opacity-100 class sets opacity to 1.'),

-- Q129
('Bootstrap', 'Which class applies 75% opacity?', '.opacity-75', '.opacity-three-quarter', '.opacity-0.75', '.alpha-75', 'A', 'Easy',
 'The .opacity-75 class applies 75% opacity.'),

-- Q130
('Bootstrap', 'Which class controls overflow?', '.overflow-auto', '.overflow-*', '.scroll-*', '.content-overflow', 'B', 'Medium',
 'Bootstrap provides overflow utilities such as .overflow-auto, .overflow-hidden, .overflow-visible and .overflow-scroll.'),

-- Q131
('Bootstrap', 'Which class hides overflowing content?', '.overflow-hidden', '.hide-overflow', '.overflow-none', '.content-hidden', 'A', 'Easy',
 'The .overflow-hidden utility sets overflow:hidden.'),

-- Q132
('Bootstrap', 'Which class makes overflowing content scrollable?', '.overflow-scroll', '.scroll-overflow', '.overflow-auto-scroll', '.scrollable', 'A', 'Easy',
 'The .overflow-scroll utility enables scrolling when content overflows.'),

-- Q133
('Bootstrap', 'Which class fixes an element to the bottom of the viewport?', '.fixed-bottom', '.bottom-fixed', '.position-bottom', '.sticky-bottom', 'A', 'Easy',
 'The .fixed-bottom class fixes an element to the bottom of the viewport.'),

-- Q134
('Bootstrap', 'Which class fixes an element to the top of the viewport?', '.fixed-top', '.top-fixed', '.position-top', '.sticky-top-fixed', 'A', 'Easy',
 'The .fixed-top class fixes an element to the top of the viewport.'),

-- Q135
('Bootstrap', 'Which class makes an element sticky at the top?', '.sticky-top', '.top-sticky', '.fixed-sticky', '.sticky-fixed-top', 'A', 'Easy',
 'The .sticky-top utility makes an element sticky at the top.'),

-- Q136
('Bootstrap', 'Which class controls user selection?', '.user-select-all', '.select-user', '.selection-all', '.user-selection', 'A', 'Easy',
 'The .user-select-all class allows users to select all text inside an element.'),

-- Q137
('Bootstrap', 'Which class creates horizontal scrolling when needed?', '.overflow-x-auto', '.overflow-horizontal', '.scroll-x', '.x-scroll-auto', 'A', 'Medium',
 'The .overflow-x-auto class enables horizontal scrolling when content overflows.'),

-- Q138
('Bootstrap', 'Which class creates vertical scrolling when needed?', '.overflow-y-auto', '.overflow-vertical', '.scroll-y', '.y-scroll-auto', 'A', 'Medium',
 'The .overflow-y-auto class enables vertical scrolling when content overflows.'),

-- Q139
('Bootstrap', 'Which class makes an element invisible but preserves its layout space?', '.invisible', '.d-none', '.hidden-space', '.opacity-0', 'A', 'Medium',
 'The .invisible class sets visibility:hidden while preserving the element''s layout space.'),

-- Q140
('Bootstrap', 'Which class allows users to select all text inside an element?', '.user-select-all', '.select-all', '.text-select-all', '.selection-all', 'A', 'Easy',
 'The .user-select-all class allows the user to select all content inside the element.'),

-- Q141
('Bootstrap', 'Which Bootstrap component creates a navigation bar?', 'Navbar', 'NavigationBox', 'NavBarContainer', 'MenuBar', 'A', 'Easy',
 'The Navbar component is used to create responsive navigation bars.'),

-- Q142
('Bootstrap', 'Which class is used as the base class for a Bootstrap navbar?', '.navbar', '.nav-bar', '.navigation', '.navbar-base', 'A', 'Easy',
 'The .navbar class is the base class for Bootstrap navbars.'),

-- Q143
('Bootstrap', 'Which class provides a dark navbar style in Bootstrap?', '.navbar-dark', '.dark-navbar', '.navbar-black', '.navbar-theme-dark', 'A', 'Medium',
 'In Bootstrap versions that provide the class, .navbar-dark is used to style navbar content for dark backgrounds.'),

-- Q144
('Bootstrap', 'Which component creates a collapsible navigation menu?', 'Navbar', 'Card', 'Badge', 'Toast', 'A', 'Easy',
 'Bootstrap Navbar supports responsive collapsing navigation menus.'),

-- Q145
('Bootstrap', 'Which component is used to display a short message or notification?', 'Toast', 'Card', 'Modal', 'Badge', 'A', 'Easy',
 'A Toast displays a lightweight notification message.'),

-- Q146
('Bootstrap', 'Which component is used to display content in a bordered box?', 'Card', 'Panel', 'Box', 'ContainerBox', 'A', 'Easy',
 'The Card component is used to group content inside a bordered container.'),

-- Q147
('Bootstrap', 'What is commonly used in Bootstrap 5 instead of the old Jumbotron component?', 'Jumbotron', 'Hero section pattern', 'Hero component', 'Banner component', 'B', 'Hard',
 'Bootstrap 5 removed the dedicated Jumbotron component; developers commonly create hero sections using utilities and layout classes.'),

-- Q148
('Bootstrap', 'Which component displays a badge or small label?', 'Badge', 'LabelBox', 'Tag', 'Marker', 'A', 'Easy',
 'The Badge component displays small labels or counts.'),

-- Q149
('Bootstrap', 'Which class creates a Bootstrap badge?', '.badge', '.tag', '.label', '.badge-box', 'A', 'Easy',
 'The .badge class is the base Bootstrap badge class.'),

-- Q150
('Bootstrap', 'Which component displays a modal dialog?', 'Modal', 'DialogBox', 'Popup', 'Window', 'A', 'Easy',
 'The Modal component displays content in a dialog overlay.'),

-- Q151
('Bootstrap', 'Which class is used as the base class for a modal?', '.modal', '.modal-box', '.dialog', '.popup', 'A', 'Medium',
 'The .modal class defines the Bootstrap modal component.'),

-- Q152
('Bootstrap', 'Which class creates the modal dialog container?', '.modal-dialog', '.dialog-container', '.modal-box', '.modal-content-box', 'A', 'Medium',
 'The .modal-dialog class provides the dialog container inside a modal.'),

-- Q153
('Bootstrap', 'Which class contains the actual content of a modal?', '.modal-content', '.modal-body-content', '.modal-box-content', '.dialog-content', 'A', 'Easy',
 'The .modal-content class contains the modal header, body and footer.'),

-- Q154
('Bootstrap', 'Which class creates the header section of a modal?', '.modal-header', '.modal-top', '.header-modal', '.modal-title-area', 'A', 'Easy',
 'The .modal-header class defines the header area of a modal.'),

-- Q155
('Bootstrap', 'Which utility can be used to give a badge a primary background in Bootstrap 5?', '.bg-primary', '.badge-primary', '.primary-badge', '.badge-bg-primary', 'A', 'Hard',
 'Bootstrap 5 uses background utilities such as .bg-primary with badges instead of the removed contextual .badge-primary class.'),

-- Q156
('Bootstrap', 'Which class creates the body section of a modal?', '.modal-body', '.modal-content-body', '.body-modal', '.modal-main', 'A', 'Easy',
 'The .modal-body class defines the main content area of a modal.'),

-- Q157
('Bootstrap', 'Which class creates the footer section of a modal?', '.modal-footer', '.modal-bottom', '.footer-modal', '.modal-end', 'A', 'Easy',
 'The .modal-footer class defines the footer area of a modal.'),

-- Q158
('Bootstrap', 'Which component creates a dropdown menu?', 'Dropdown', 'Menu', 'SelectMenu', 'DropMenu', 'A', 'Easy',
 'The Dropdown component creates a toggleable menu of links or actions.'),

-- Q159
('Bootstrap', 'Which class is used to create a Bootstrap dropdown?', '.dropdown', '.drop-menu', '.dropdown-menu-container', '.menu-dropdown', 'A', 'Easy',
 'The .dropdown class is the base wrapper for Bootstrap dropdowns.'),

-- Q160
('Bootstrap', 'Which class creates the dropdown menu itself?', '.dropdown-menu', '.menu-dropdown', '.dropdown-list', '.drop-list', 'A', 'Easy',
 'The .dropdown-menu class defines the dropdown menu.'),

-- Q161
('Bootstrap', 'Which class creates a dropdown item?', '.dropdown-item', '.menu-item', '.drop-item', '.dropdown-link', 'A', 'Easy',
 'The .dropdown-item class styles individual dropdown links or items.'),

-- Q162
('Bootstrap', 'Which component creates a progress bar?', 'Progress', 'ProgressBar', 'Loader', 'ProgressComponent', 'B', 'Easy',
 'Bootstrap uses the progress component with a .progress container and .progress-bar element.'),

-- Q163
('Bootstrap', 'Which class creates the progress bar itself?', '.progress-bar', '.progress', '.bar-progress', '.progress-line', 'A', 'Easy',
 'The .progress-bar class represents the filled progress indicator.'),

-- Q164
('Bootstrap', 'Which class creates the progress bar container?', '.progress', '.progress-container', '.bar-container', '.progress-wrapper', 'A', 'Easy',
 'The .progress class creates the progress bar container.'),

-- Q165
('Bootstrap', 'Which component creates a horizontal group of tabs?', 'Nav', 'Tabs', 'TabGroup', 'NavigationTabs', 'B', 'Medium',
 'Bootstrap nav utilities can be used to create tabbed navigation.'),

-- Q166
('Bootstrap', 'Which class creates a Bootstrap navigation list?', '.nav', '.navigation', '.nav-list', '.navbar-list', 'A', 'Easy',
 'The .nav class is the base class for Bootstrap navigation components.'),

-- Q167
('Bootstrap', 'Which class creates a navigation link?', '.nav-link', '.navigation-link', '.link-nav', '.nav-item-link', 'A', 'Easy',
 'The .nav-link class styles links within Bootstrap navigation.'),

-- Q168
('Bootstrap', 'Which class represents an item in a Bootstrap navigation?', '.nav-item', '.navigation-item', '.item-nav', '.nav-list-item', 'A', 'Easy',
 'The .nav-item class represents an item within Bootstrap navigation.'),

-- Q169
('Bootstrap', 'Which component displays a small notification message?', 'Toast', 'Alert', 'Badge', 'Tooltip', 'A', 'Easy',
 'Toast is designed for lightweight notifications.'),

-- Q170
('Bootstrap', 'Which component provides contextual feedback messages?', 'Alert', 'Toast', 'Badge', 'MessageBox', 'A', 'Easy',
 'The Alert component displays contextual feedback messages.'),

-- Q171
('Bootstrap', 'Which class creates a Bootstrap alert?', '.alert', '.message', '.alert-box', '.notification', 'A', 'Easy',
 'The .alert class is the base class for Bootstrap alerts.'),

-- Q172
('Bootstrap', 'Which class creates a primary alert?', '.alert-primary', '.primary-alert', '.alert-blue', '.alert-main', 'A', 'Easy',
 'The .alert-primary class creates a primary contextual alert.'),

-- Q173
('Bootstrap', 'Which class creates a success alert?', '.alert-success', '.success-alert', '.alert-green', '.alert-good', 'A', 'Easy',
 'The .alert-success class creates a success contextual alert.'),

-- Q174
('Bootstrap', 'Which class creates a danger alert?', '.alert-danger', '.danger-alert', '.alert-red', '.alert-error', 'A', 'Easy',
 'The .alert-danger class creates a danger contextual alert.'),

-- Q175
('Bootstrap', 'Which class creates a warning alert?', '.alert-warning', '.warning-alert', '.alert-yellow', '.alert-caution', 'A', 'Easy',
 'The .alert-warning class creates a warning contextual alert.'),

-- Q176
('Bootstrap', 'Which component provides additional information when hovering over an element?', 'Tooltip', 'Popover', 'Toast', 'Alert', 'A', 'Medium',
 'The Tooltip component displays a small informational message when triggered.'),

-- Q177
('Bootstrap', 'Which component displays a richer pop-up containing title and content?', 'Popover', 'Tooltip', 'Toast', 'Modal', 'A', 'Medium',
 'The Popover component can display a title and content in a pop-up.'),

-- Q178
('Bootstrap', 'Which component creates a carousel or slideshow?', 'Carousel', 'Slider', 'SlideShow', 'Gallery', 'A', 'Easy',
 'The Carousel component creates a slideshow of images or content.'),

-- Q179
('Bootstrap', 'Which class is used as the base class for a carousel?', '.carousel', '.slider', '.carousel-container', '.slide-show', 'A', 'Easy',
 'The .carousel class is the base class for Bootstrap carousels.'),

-- Q180
('Bootstrap', 'Which component creates a collapsible content section?', 'Collapse', 'AccordionOnly', 'Expandable', 'ToggleBox', 'A', 'Medium',
 'The Collapse component allows content to be shown or hidden.'),

-- Q181
('Bootstrap', 'Which class is used for a Bootstrap form control?', '.form-control', '.input-control', '.form-input', '.control-form', 'A', 'Easy',
 'The .form-control class styles text-based form controls.'),

-- Q182
('Bootstrap', 'Which class styles a form label?', '.form-label', '.label-form', '.form-text-label', '.input-label', 'A', 'Easy',
 'The .form-label class styles labels associated with form controls.'),

-- Q183
('Bootstrap', 'Which class styles a select dropdown?', '.form-select', '.select-form', '.form-dropdown', '.select-control', 'A', 'Easy',
 'The .form-select class styles select elements.'),

-- Q184
('Bootstrap', 'Which class styles checkbox and radio controls?', '.form-check', '.check-control', '.form-checkbox', '.input-check', 'A', 'Easy',
 'The .form-check class is used for Bootstrap checkbox and radio controls.'),

-- Q185
('Bootstrap', 'Which class styles a checkbox input?', '.form-check-input', '.checkbox-input', '.form-input-check', '.check-input', 'A', 'Easy',
 'The .form-check-input class styles checkbox and radio inputs.'),

-- Q186
('Bootstrap', 'Which class styles the label associated with a checkbox?', '.form-check-label', '.check-label', '.form-label-check', '.checkbox-label', 'A', 'Easy',
 'The .form-check-label class styles the label associated with a checkbox or radio input.'),

-- Q187
('Bootstrap', 'Which class creates a form text help message?', '.form-text', '.help-text', '.form-help', '.text-help', 'A', 'Easy',
 'The .form-text class is used for form-related help text.'),

-- Q188
('Bootstrap', 'Which class creates a responsive table?', '.table-responsive', '.responsive-table', '.table-fluid', '.table-scroll', 'A', 'Easy',
 'The .table-responsive class makes tables horizontally scrollable on smaller screens.'),

-- Q189
('Bootstrap', 'Which class creates a Bootstrap table?', '.table', '.bootstrap-table', '.data-table', '.table-style', 'A', 'Easy',
 'The .table class applies Bootstrap table styling.'),

-- Q190
('Bootstrap', 'Which class makes a table responsive?', '.table-responsive', '.responsive-table', '.table-fluid', '.responsive', 'A', 'Easy',
 'The .table-responsive class enables horizontal scrolling for wide tables.'),

-- Q191
('Bootstrap', 'Which class creates a striped table?', '.table-striped', '.striped-table', '.table-lines', '.row-striped', 'A', 'Easy',
 'The .table-striped class adds alternating row backgrounds.'),

-- Q192
('Bootstrap', 'Which class creates a bordered table?', '.table-bordered', '.border-table', '.table-border', '.table-outline', 'A', 'Easy',
 'The .table-bordered class adds borders around table cells.'),

-- Q193
('Bootstrap', 'Which class creates a borderless table?', '.table-borderless', '.no-border-table', '.table-no-border', '.borderless', 'A', 'Easy',
 'The .table-borderless class removes borders from the table.'),

-- Q194
('Bootstrap', 'Which class highlights table rows when hovering?', '.table-hover', '.hover-table', '.table-highlight', '.row-hover', 'A', 'Easy',
 'The .table-hover class enables a hover state for table rows.'),

-- Q195
('Bootstrap', 'Which class makes table rows compact?', '.table-sm', '.small-table', '.table-small', '.compact-table', 'A', 'Easy',
 'The .table-sm class makes tables more compact by reducing cell padding.'),

-- Q196
('Bootstrap', 'What does Bootstrap JavaScript primarily provide?', 'Interactive components', 'Database connectivity', 'Server-side routing', 'File storage', 'A', 'Medium',
 'Bootstrap JavaScript provides interactive behavior for components such as modals, dropdowns, carousels and tooltips.'),

-- Q197
('Bootstrap', 'Which JavaScript dependency is NOT required by Bootstrap 5?', 'Popper', 'jQuery', 'Bootstrap JS', 'Vanilla JavaScript', 'B', 'Hard',
 'Bootstrap 5 does not require jQuery. It uses its own JavaScript and uses Popper where required by certain components.'),

-- Q198
('Bootstrap', 'Which Bootstrap 5 component creates hidden content that slides in from the side?', 'Offcanvas', 'Sidebar', 'Drawer', 'SideModal', 'A', 'Medium',
 'Offcanvas creates hidden side content that can slide into view.'),

-- Q199
('Bootstrap', 'Which Bootstrap feature can be used to create responsive navigation menus?', 'Navbar', 'Card', 'Badge', 'Table', 'A', 'Easy',
 'Bootstrap Navbar provides responsive navigation functionality.'),

-- Q200
('Bootstrap', 'What is one major advantage of using Bootstrap?', 'It provides reusable responsive UI components and utilities', 'It replaces JavaScript completely', 'It is a database management system', 'It only works on desktop devices', 'A', 'Easy',
 'Bootstrap provides reusable responsive UI components and utility classes that speed up front-end development.');
 
 
 USE ai_interviewer;

SELECT COUNT(*) AS bootstrap_questions
FROM questions
WHERE skill = 'Bootstrap';

SELECT COUNT(DISTINCT question) AS unique_bootstrap_questions
FROM questions
WHERE skill = 'Bootstrap';