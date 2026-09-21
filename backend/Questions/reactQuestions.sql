USE ai_interviewer;

-- React.js 200 MCQs
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('React.js', 'What is React.js?', 'A database', 'A JavaScript library for building user interfaces', 'A programming language', 'An operating system', 'B', 'Easy', 'React is a JavaScript library used primarily for building interactive user interfaces.'),

-- Q2
('React.js', 'Who created React?', 'Google', 'Microsoft', 'Meta (Facebook)', 'Amazon', 'C', 'Easy', 'React was originally developed by Facebook, now Meta.'),

-- Q3
('React.js', 'React was initially released publicly in which year?', '2010', '2013', '2016', '2019', 'B', 'Easy', 'React was open-sourced by Facebook in 2013.'),

-- Q4
('React.js', 'Which language is primarily used with React?', 'Java', 'Python', 'JavaScript', 'C++', 'C', 'Easy', 'React applications are primarily written using JavaScript.'),

-- Q5
('React.js', 'What does JSX stand for?', 'JavaScript XML', 'Java Syntax Extension', 'JavaScript Extension', 'JSON XML', 'A', 'Easy', 'JSX stands for JavaScript XML and allows HTML-like syntax inside JavaScript.'),

-- Q6
('React.js', 'Is JSX required to use React?', 'Yes, always', 'No', 'Only for class components', 'Only for TypeScript', 'B', 'Easy', 'JSX is optional and React can also be used with regular JavaScript.'),

-- Q7
('React.js', 'What is a React component?', 'A database table', 'A reusable piece of UI', 'A CSS file', 'A server', 'B', 'Easy', 'Components are reusable building blocks of React applications.'),

-- Q8
('React.js', 'Which type of component is commonly used in modern React?', 'Function component', 'SQL component', 'Database component', 'HTML-only component', 'A', 'Easy', 'Modern React development primarily uses function components.'),

-- Q9
('React.js', 'Which is commonly used to create a React component?', 'component()', 'A JavaScript function', 'createComponent() only', 'reactComponent()', 'B', 'Easy', 'A React function component is simply a JavaScript function that returns UI.'),

-- Q10
('React.js', 'Which naming convention is normally used for React component names?', 'lowercase', 'UPPERCASE only', 'PascalCase', 'snake_case', 'C', 'Easy', 'React component names conventionally use PascalCase.'),

-- Q11
('React.js', 'Which syntax is commonly used to return JSX?', 'return <h1>Hello</h1>', 'return HTML("h1")', 'return.jsx()', 'jsx return()', 'A', 'Easy', 'A function component can return JSX directly.'),

-- Q12
('React.js', 'Which library is commonly used to render React into the browser DOM?', 'react-dom', 'react-browser', 'dom-react', 'browser-react', 'A', 'Easy', 'react-dom provides browser-specific APIs for rendering React applications.'),

-- Q13
('React.js', 'Which API is commonly used in modern React to create a root?', 'ReactDOM.createRoot()', 'React.createRoot()', 'DOM.renderRoot()', 'createReactDOM()', 'A', 'Easy', 'React 18 introduced createRoot through react-dom/client.'),

-- Q14
('React.js', 'Which method was commonly used before React 18 to render an application?', 'ReactDOM.render()', 'React.renderApp()', 'ReactDOM.start()', 'renderReact()', 'A', 'Easy', 'ReactDOM.render was the traditional rendering API before React 18.'),

-- Q15
('React.js', 'What is the DOM?', 'Document Object Model', 'Data Object Method', 'Document Output Manager', 'Data Organization Model', 'A', 'Easy', 'DOM stands for Document Object Model.'),

-- Q16
('React.js', 'What is React Virtual DOM?', 'A separate physical browser', 'A lightweight representation of UI used for efficient updates', 'A database', 'A CSS framework', 'B', 'Easy', 'React maintains an in-memory representation of UI to determine efficient DOM updates.'),

-- Q17
('React.js', 'What is reconciliation in React?', 'Database synchronization', 'Process of determining necessary UI updates', 'CSS compilation', 'API authentication', 'B', 'Easy', 'Reconciliation compares rendered output and determines what needs to change.'),

-- Q18
('React.js', 'Which syntax represents a JSX element?', '<div>Hello</div>', '[div]Hello[/div]', '{div}Hello{/div}', 'div>Hello</div>', 'A', 'Easy', 'JSX uses HTML-like syntax.'),

-- Q19
('React.js', 'How are JavaScript expressions embedded in JSX?', '[]', '{}', '()', '<>', 'B', 'Easy', 'Curly braces are used to embed JavaScript expressions in JSX.'),

-- Q20
('React.js', 'Which is valid JSX?', '<h1>{name}</h1>', '<h1>[name]</h1>', '<h1>(name)</h1>', '<h1>$name</h1>', 'A', 'Easy', '{name} evaluates the JavaScript variable name.'),

-- Q21
('React.js', 'Can JSX contain JavaScript expressions?', 'Yes', 'No', 'Only strings', 'Only numbers', 'A', 'Easy', 'JSX supports JavaScript expressions inside curly braces.'),

-- Q22
('React.js', 'Which attribute is used instead of HTML class in JSX?', 'className', 'classNameHTML', 'cssClass', 'classAttribute', 'A', 'Easy', 'JSX uses className for CSS classes.'),

-- Q23
('React.js', 'Which attribute is used instead of HTML for for labels?', 'htmlFor', 'forLabel', 'labelFor', 'forHTML', 'A', 'Easy', 'JSX uses htmlFor for label association.'),

-- Q24
('React.js', 'Which statement about JSX is correct?', 'JSX is exactly HTML', 'JSX is syntax transformed into JavaScript', 'JSX is CSS', 'JSX is SQL', 'B', 'Easy', 'JSX is JavaScript syntax transformed into JavaScript expressions.'),

-- Q25
('React.js', 'Can a React component return multiple sibling elements directly without a wrapper?', 'Always', 'No, unless using a fragment or another wrapper', 'Only with CSS', 'Only in class components', 'B', 'Easy', 'Fragments allow multiple sibling elements without an extra DOM node.'),

-- Q26
('React.js', 'Which syntax creates a React Fragment?', '<>...</>', '[]...</[]>', '<fragment>...</fragment> only', '{fragment}', 'A', 'Easy', '<>...</> is shorthand syntax for a React Fragment.'),

-- Q27
('React.js', 'What is the purpose of a Fragment?', 'Add CSS', 'Group elements without adding an extra DOM element', 'Create a database', 'Make API requests', 'B', 'Easy', 'Fragments group multiple elements without creating an additional DOM node.'),

-- Q28
('React.js', 'What are props in React?', 'Component inputs', 'Database records', 'CSS rules', 'Server variables only', 'A', 'Easy', 'Props are values passed from a parent component to a child component.'),

-- Q29
('React.js', 'Are props generally mutable by the receiving component?', 'Yes', 'No', 'Only strings are mutable', 'Only objects are mutable', 'B', 'Easy', 'Props should be treated as read-only by the receiving component.'),

-- Q30
('React.js', 'Which syntax passes a prop named name?', '<User name="Chandana" />', '<User prop-name="Chandana" />', '<User -> name />', '<User[name="Chandana"] />', 'A', 'Easy', 'JSX attributes are used to pass props.'),

-- Q31
('React.js', 'How can a JavaScript value be passed as a prop?', '<User age={20} />', '<User age[20] />', '<User age=(20) />', '<User age:20 />', 'A', 'Easy', 'Curly braces allow JavaScript expressions to be passed as prop values.'),

-- Q32
('React.js', 'What is children in React?', 'A built-in CSS property', 'Content nested inside a component opening and closing tags', 'A database field', 'A hook', 'B', 'Easy', 'Nested JSX is available through the children prop.'),

-- Q33
('React.js', 'Which is valid React component usage for displaying Hello as children?', '<Card>Hello</Card>', '<Card children-only>Hello', '<Card->Hello</Card>', '<Card[Hello]</Card>', 'A', 'Easy', 'Text nested inside Card becomes the component children.'),

-- Q34
('React.js', 'What is state in React?', 'Data that can change over time within a component', 'Static HTML', 'CSS styling', 'Database schema', 'A', 'Easy', 'State represents data that affects rendered output and can change over time.'),

-- Q35
('React.js', 'Which hook is used to add state to a function component?', 'useState', 'useData', 'useValue', 'useComponent', 'A', 'Easy', 'useState lets function components store and update state.'),

-- Q36
('React.js', 'Which syntax correctly initializes state?', 'const [count, setCount] = useState(0)', 'const count = state(0)', 'useState.count(0)', 'const [count] = stateHook(0)', 'A', 'Easy', 'useState returns the current state value and a setter function.'),

-- Q37
('React.js', 'What does setCount usually represent?', 'A state setter function', 'A component', 'A prop', 'A CSS class', 'A', 'Easy', 'The second value returned by useState updates the state.'),

-- Q38
('React.js', 'What happens after state is updated?', 'React can re-render the component', 'The browser always reloads the page', 'The application closes', 'CSS is deleted', 'A', 'Easy', 'A state update schedules a new render.'),

-- Q39
('React.js', 'Which is the recommended way to update state?', 'Directly mutate the state variable', 'Use its setter function', 'Modify the DOM manually', 'Refresh the browser', 'B', 'Easy', 'State should be updated using the setter returned by useState.'),

-- Q40
('React.js', 'Why should state objects generally not be mutated directly?', 'React relies on updates expressed through state setters and immutable patterns', 'JavaScript cannot store objects', 'Objects cannot be rendered', 'CSS prevents mutation', 'A', 'Easy', 'Immutable updates make state changes predictable.'),

-- Q41
('React.js', 'Which hook is commonly used for side effects?', 'useEffect', 'useSide', 'useAction', 'useEventOnly', 'A', 'Easy', 'useEffect is used to synchronize components with external systems and perform side effects.'),

-- Q42
('React.js', 'Which hook can access a mutable reference without causing a render when the ref changes?', 'useRef', 'usePointer', 'useMemory', 'useValueRef', 'A', 'Easy', 'useRef returns a mutable ref object whose current changes do not trigger rendering.'),

-- Q43
('React.js', 'Which hook is used to memoize a calculated value?', 'useMemo', 'useValue', 'memoValue', 'useCalculate', 'A', 'Easy', 'useMemo caches the result of a calculation between renders.'),

-- Q44
('React.js', 'Which hook memoizes a function?', 'useCallback', 'useFunction', 'useMemoFunction', 'memoCallbackOnly', 'A', 'Easy', 'useCallback caches a function definition between renders.'),

-- Q45
('React.js', 'Which hook is used to consume a context?', 'useContext', 'useProvider', 'useGlobal', 'useContextData', 'A', 'Easy', 'useContext reads and subscribes to a context value.'),

-- Q46
('React.js', 'What problem does Context help solve?', 'Passing shared values deeply through component trees', 'Writing SQL', 'Creating CSS animations', 'Compiling Java', 'A', 'Easy', 'Context can reduce the need to pass props through many intermediate components.'),

-- Q47
('React.js', 'Which API creates a context?', 'createContext()', 'makeContext()', 'new Context() only', 'createReactContextOnly()', 'A', 'Easy', 'React provides createContext for creating a context.'),

-- Q48
('React.js', 'Which component provides a context value?', 'Context Provider', 'Context Consumer only', 'State Provider', 'Data Component', 'A', 'Easy', 'A provider makes a context value available to descendant components.'),

-- Q49
('React.js', 'What is conditional rendering?', 'Rendering UI based on a condition', 'Rendering only CSS', 'Rendering database tables', 'Rendering Java code', 'A', 'Easy', 'React can render different UI depending on state or other conditions.'),

-- Q50
('React.js', 'Which operator is commonly used for simple conditional JSX?', 'Ternary ? :', 'SQL WHERE', 'Java switch only', 'CSS if', 'A', 'Easy', 'The ternary operator is commonly used for conditional expressions in JSX.'),

-- Q51
('React.js', 'Which JavaScript method is commonly used to render a list in React?', 'map()', 'loopReact()', 'forReact()', 'renderList()', 'A', 'Medium', 'map transforms array items into JSX elements.'),

-- Q52
('React.js', 'Why does React require keys when rendering lists?', 'To uniquely identify list items between renders', 'To add CSS', 'To connect to a database', 'To encrypt data', 'A', 'Medium', 'Keys help React identify list items that changed, were added, or removed.'),

-- Q53
('React.js', 'Which is a valid key?', 'key={user.id}', 'id-key-only={user}', 'listKey()', 'reactKey(user)', 'A', 'Medium', 'A stable unique ID is a good choice for a React key.'),

-- Q54
('React.js', 'Should array indexes always be used as keys?', 'Yes', 'No', 'Only for API data', 'Only for forms', 'B', 'Medium', 'Indexes can cause issues when list items are reordered, inserted, or removed.'),

-- Q55
('React.js', 'Which event handles a button click?', 'onClick', 'onButton', 'clickReact', 'buttonClickOnly', 'A', 'Medium', 'React uses camelCase event props such as onClick.'),

-- Q56
('React.js', 'Which is correct JSX for a click handler?', '<button onClick={handleClick}>Click</button>', '<button click={handleClick}>Click</button>', '<button on-click={handleClick}>Click</button>', '<button onclick-react={handleClick}>Click</button>', 'A', 'Medium', 'React event handlers use camelCase names.'),

-- Q57
('React.js', 'Which event handles text input changes?', 'onChange', 'onInputText', 'onTextChangeOnly', 'changeReact', 'A', 'Medium', 'onChange is commonly used with controlled form inputs.'),

-- Q58
('React.js', 'Which event handles form submission?', 'onSubmit', 'onFormSend', 'submitFormReact', 'formSubmitOnly', 'A', 'Medium', 'React uses onSubmit on form elements.'),

-- Q59
('React.js', 'Which method prevents the browser default form submission?', 'event.preventDefault()', 'event.stopSubmit()', 'event.preventForm()', 'event.cancelReact()', 'A', 'Medium', 'preventDefault prevents the default browser action.'),

-- Q60
('React.js', 'What is a controlled component?', 'A form element whose value is controlled by React state', 'A component controlled by CSS', 'A component controlled by SQL', 'A component without state', 'A', 'Medium', 'In a controlled input, React state is the source of truth.'),

-- Q61
('React.js', 'Which property controls a controlled text input value?', 'value', 'textValueOnly', 'inputState', 'currentValueReact', 'A', 'Medium', 'The value prop controls the input displayed value.'),

-- Q62
('React.js', 'Which handler usually updates controlled input state?', 'onChange', 'onUpdateOnly', 'onInputReact', 'changeStateOnly', 'A', 'Medium', 'onChange reads the new value and updates React state.'),

-- Q63
('React.js', 'What is an uncontrolled component?', 'A form element whose current value is primarily managed by the DOM', 'A component with no JavaScript', 'A component without HTML', 'A database component', 'A', 'Medium', 'Uncontrolled form elements keep their current value in the DOM.'),

-- Q64
('React.js', 'Which hook is commonly used to access an uncontrolled input?', 'useRef', 'useStateOnly', 'useInput', 'useDOMValue', 'A', 'Medium', 'A ref can point to a DOM input and allow its value to be read.'),

-- Q65
('React.js', 'Which React event is used for mouse movement?', 'onMouseMove', 'onMouseMoveReactOnly', 'mouseMoveEvent', 'onMoveMouse', 'A', 'Medium', 'onMouseMove handles pointer movement over an element.'),

-- Q66
('React.js', 'Which event fires when the mouse enters an element?', 'onMouseEnter', 'onMouseInOnly', 'mouseEnterReact', 'onEnterMouse', 'A', 'Medium', 'React provides onMouseEnter for mouse entry.'),

-- Q67
('React.js', 'Which event handles keyboard key presses?', 'onKeyDown', 'onKeyboardPressOnly', 'keyPressReact', 'onKeyboardDownOnly', 'A', 'Medium', 'onKeyDown fires when a key is pressed down.'),

-- Q68
('React.js', 'Which event handles focus entering an element?', 'onFocus', 'onFocused', 'focusReactOnly', 'onEnterFocus', 'A', 'Medium', 'onFocus handles focus events.'),

-- Q69
('React.js', 'Which event handles losing focus?', 'onBlur', 'onLoseFocus', 'blurReactOnly', 'onFocusOutReactOnly', 'A', 'Medium', 'onBlur fires when an element loses focus.'),

-- Q70
('React.js', 'React event handler names generally use:', 'camelCase', 'snake_case', 'kebab-case', 'uppercase only', 'A', 'Medium', 'React event props such as onClick and onChange use camelCase.'),

-- Q71
('React.js', 'Which is correct for passing an event handler?', 'onClick={handleClick}', 'onClick="handleClick()"', 'click="handleClick"', 'onclick-react="handleClick"', 'A', 'Medium', 'JSX uses JavaScript expressions for event handlers.'),

-- Q72
('React.js', 'What is event propagation?', 'An event moving through the DOM hierarchy', 'CSS inheritance', 'State copying', 'Component compilation', 'A', 'Medium', 'Events can propagate through ancestor and descendant elements.'),

-- Q73
('React.js', 'Which method stops event propagation?', 'event.stopPropagation()', 'event.stopEvent()', 'event.preventBubble()', 'event.cancelPropagationOnly()', 'A', 'Medium', 'stopPropagation prevents further propagation of the event.'),

-- Q74
('React.js', 'What is a synthetic event in React?', 'React normalized event interface', 'A CSS event', 'A database event', 'A server event', 'A', 'Medium', 'React provides a consistent event interface around browser events.'),

-- Q75
('React.js', 'Which form input type represents a checkbox?', 'checkbox', 'check', 'boolean-input', 'tick', 'A', 'Medium', 'HTML uses type="checkbox" for checkbox inputs.'),

-- Q76
('React.js', 'For a controlled checkbox, which prop represents its checked state?', 'checked', 'selected', 'valueChecked', 'isCheckedOnly', 'A', 'Medium', 'The checked prop controls a checkbox checked state.'),

-- Q77
('React.js', 'Which prop is used for a controlled select?', 'value', 'selectedValueOnly', 'optionValue', 'selectStateOnly', 'A', 'Medium', 'A controlled select uses value with onChange.'),

-- Q78
('React.js', 'What does defaultValue commonly indicate?', 'Initial value for an uncontrolled form element', 'Current state value', 'CSS default', 'API response', 'A', 'Medium', 'defaultValue sets an initial value without controlling later changes through state.'),

-- Q79
('React.js', 'Which attribute makes an input required?', 'required', 'mustFill', 'validateRequired', 'inputRequiredOnly', 'A', 'Medium', 'required is the standard HTML constraint attribute.'),

-- Q80
('React.js', 'Which React prop is used to set an input placeholder?', 'placeholder', 'hint', 'inputHint', 'placeText', 'A', 'Medium', 'placeholder is passed directly as a JSX prop.'),

-- Q81
('React.js', 'Which hook is useful for managing complex form state?', 'useReducer', 'useFormOnly', 'useComplexForm', 'useFields', 'A', 'Medium', 'useReducer can organize complex state transitions.'),

-- Q82
('React.js', 'What does useReducer return?', 'State and a dispatch function', 'Only state', 'Only a function', 'Props and context', 'A', 'Medium', 'useReducer returns the current state and a dispatch function.'),

-- Q83
('React.js', 'Which function sends an action to a reducer?', 'dispatch', 'sendActionOnly', 'reduceState', 'updateReducer', 'A', 'Medium', 'dispatch(action) requests a state transition through the reducer.'),

-- Q84
('React.js', 'What is a reducer?', 'A function that determines new state from current state and an action', 'A CSS utility', 'An API server', 'A React component only', 'A', 'Medium', 'A reducer typically returns the next state from state and action.'),

-- Q85
('React.js', 'Which data structure is commonly used for a reducer action?', 'Object', 'CSS string only', 'HTML tag', 'SQL query only', 'A', 'Medium', 'Actions are commonly objects containing a type and optional data.'),

-- Q86
('React.js', 'What is lazy loading in React?', 'Loading code when it is needed', 'Loading CSS slowly', 'Delaying all events', 'Disabling components', 'A', 'Medium', 'Lazy loading can load components or code on demand.'),

-- Q87
('React.js', 'Which API supports lazy loading a component?', 'lazy()', 'loadComponent()', 'lazyComponentOnly()', 'useLazy()', 'A', 'Medium', 'React lazy can defer loading a component until it is rendered.'),

-- Q88
('React.js', 'Which component is commonly used with lazy?', 'Suspense', 'LoadingProvider', 'WaitComponent', 'LazyContainer', 'A', 'Medium', 'Suspense provides fallback UI while lazy content is loading.'),

-- Q89
('React.js', 'Which prop specifies Suspense fallback UI?', 'fallback', 'loading', 'placeholder', 'wait', 'A', 'Medium', 'Suspense fallback specifies the UI displayed while content is suspended.'),

-- Q90
('React.js', 'What is an Error Boundary used for?', 'Handling rendering errors in descendant components', 'Styling components', 'Handling SQL errors', 'Creating APIs', 'A', 'Medium', 'Error boundaries can catch rendering errors in their child tree.'),

-- Q91
('React.js', 'Can a normal function component itself be an error boundary using only ordinary function syntax?', 'Not by ordinary function syntax alone', 'Yes, always', 'Only with CSS', 'Only with useState', 'A', 'Medium', 'Traditional React error boundaries use class components or framework mechanisms.'),

-- Q92
('React.js', 'What is lifting state up?', 'Moving shared state to a common parent', 'Moving CSS upward', 'Moving components to another folder', 'Moving data to a database', 'A', 'Medium', 'Shared state is often moved to the closest common ancestor.'),

-- Q93
('React.js', 'Why is state lifted up?', 'To share state between sibling components', 'To make CSS faster', 'To create APIs', 'To remove JSX', 'A', 'Medium', 'A common parent can pass shared state and handlers to siblings.'),

-- Q94
('React.js', 'What is prop drilling?', 'Passing props through intermediate components that do not need them', 'Updating props directly', 'Deleting props', 'Styling props', 'A', 'Medium', 'Prop drilling occurs when data passes through multiple layers to reach a nested component.'),

-- Q95
('React.js', 'Which feature can reduce prop drilling?', 'Context', 'CSS Grid', 'SQL', 'HTML tables', 'A', 'Medium', 'Context provides values directly to components that need them.'),

-- Q96
('React.js', 'What does React.memo do?', 'Can skip re-rendering a component when its props are unchanged', 'Stores data permanently', 'Creates a database', 'Makes every render faster automatically', 'A', 'Medium', 'memo can prevent unnecessary re-renders when props compare equal.'),

-- Q97
('React.js', 'Does React.memo guarantee that a component will never re-render?', 'Yes', 'No', 'Only with state', 'Only with props', 'B', 'Medium', 'A memoized component can still re-render because of state, context, or changed props.'),

-- Q98
('React.js', 'Which API is used for creating portals?', 'createPortal', 'createReactPortalOnly', 'portal()', 'ReactDOM.portal()', 'A', 'Medium', 'createPortal renders React children into a different DOM location.'),

-- Q99
('React.js', 'Portals are commonly useful for:', 'Modals and overlays', 'SQL queries', 'CSS compilation', 'API authentication', 'A', 'Medium', 'Portals help render overlays outside the normal DOM hierarchy.'),

-- Q100
('React.js', 'What is component composition?', 'Combining smaller components to build larger UI', 'Combining databases', 'Combining CSS files only', 'Combining APIs', 'A', 'Medium', 'Composition builds reusable interfaces from smaller components.'),

-- Q101
('React.js', 'What is a React Hook?', 'A function that lets components use React features', 'A CSS selector', 'A database query', 'An HTML tag', 'A', 'Medium', 'Hooks let function components use features such as state, context, refs, and effects.'),

-- Q102
('React.js', 'Which naming convention do built-in hooks follow?', 'Start with use', 'Start with hook', 'End with Hook', 'Start with react', 'A', 'Medium', 'Built-in React hooks are named with the use prefix.'),

-- Q103
('React.js', 'Can you create custom hooks?', 'Yes', 'No', 'Only in class components', 'Only in HTML', 'A', 'Medium', 'Developers can create custom hooks to reuse stateful logic.'),

-- Q104
('React.js', 'What should a custom Hook name generally start with?', 'use', 'hook', 'custom', 'react', 'A', 'Medium', 'Custom hooks should start with use so tooling can recognize hook usage.'),

-- Q105
('React.js', 'Which hook is useful for synchronizing with an external system?', 'useEffect', 'useCSS', 'useExternalOnly', 'useSyncData', 'A', 'Medium', 'useEffect can synchronize components with external systems.'),

-- Q106
('React.js', 'What does the dependency array of an effect help determine?', 'When the effect should re-run', 'Which CSS file loads', 'Which component is deleted', 'Which API server starts', 'A', 'Medium', 'Effect dependencies determine when React needs to re-run the effect.'),

-- Q107
('React.js', 'What does an empty dependency array generally mean?', 'The effect has no reactive dependencies', 'The effect never runs', 'The component never renders', 'The effect runs on every state change', 'A', 'Medium', 'An effect with no reactive dependencies does not re-run due to component updates.'),

-- Q108
('React.js', 'What can an effect return?', 'A cleanup function', 'A component only', 'CSS', 'A database connection only', 'A', 'Medium', 'An effect may return a cleanup function.'),

-- Q109
('React.js', 'Why is cleanup important?', 'To unsubscribe, remove listeners, or clean external resources', 'To remove JSX', 'To delete React', 'To clear CSS files', 'A', 'Medium', 'Cleanup prevents stale subscriptions, listeners, and timers.'),

-- Q110
('React.js', 'Which hook stores a mutable value without triggering a render when changed?', 'useRef', 'useState', 'useMemo', 'useContext', 'A', 'Medium', 'Changes to ref.current do not trigger a component re-render.'),

-- Q111
('React.js', 'What property of a ref object stores its value?', '.current', '.value', '.data', '.refValue', 'A', 'Medium', 'The mutable value is stored in ref.current.'),

-- Q112
('React.js', 'Can useRef be used to reference a DOM element?', 'Yes', 'No', 'Only with class components', 'Only with CSS', 'A', 'Medium', 'A ref can be attached to a DOM element.'),

-- Q113
('React.js', 'What is useMemo intended for?', 'Caching the result of a calculation', 'Updating state', 'Handling clicks', 'Creating a DOM node', 'A', 'Medium', 'useMemo can cache a calculated value between renders.'),

-- Q114
('React.js', 'What is useCallback intended for?', 'Caching a function definition', 'Caching CSS', 'Creating state', 'Fetching APIs automatically', 'A', 'Medium', 'useCallback returns the same function reference when dependencies remain unchanged.'),

-- Q115
('React.js', 'Should useMemo be used for every calculation?', 'Yes', 'No', 'Only for strings', 'Only for arrays', 'B', 'Medium', 'Memoization has a cost and should be used when it provides a meaningful benefit.'),

-- Q116
('React.js', 'Which hook is useful for managing state transitions involving actions?', 'useReducer', 'useActionStateOnly', 'useTransitionOnly', 'useStateReducerOnly', 'A', 'Medium', 'useReducer centralizes complex state transition logic.'),

-- Q117
('React.js', 'Which hook reads context?', 'useContext', 'useReadContext', 'useProvider', 'useSharedState', 'A', 'Medium', 'useContext reads a context value.'),

-- Q118
('React.js', 'What is useLayoutEffect?', 'An effect hook that runs after DOM mutations but before the browser paints', 'A CSS hook', 'A database hook', 'A server-only hook', 'A', 'Medium', 'useLayoutEffect is useful for layout measurement before the browser repaints.'),

-- Q119
('React.js', 'Which effect hook should generally be preferred for non-layout side effects?', 'useEffect', 'useLayoutEffect always', 'useDOMEffect', 'usePaintEffect', 'A', 'Medium', 'useEffect is the standard choice for most side effects.'),

-- Q120
('React.js', 'Which hook can defer non-urgent state updates?', 'useTransition', 'useDelay', 'useDeferredStateOnly', 'useAsyncState', 'A', 'Medium', 'useTransition marks updates as non-urgent transitions.'),

-- Q121
('React.js', 'What does startTransition do?', 'Marks state updates as non-urgent', 'Starts a CSS transition', 'Starts a server', 'Creates a component', 'A', 'Medium', 'startTransition lets React prioritize urgent updates over transition updates.'),

-- Q122
('React.js', 'Which hook can defer a value?', 'useDeferredValue', 'useDelayValue', 'useLater', 'useValueDeferredOnly', 'A', 'Medium', 'useDeferredValue lets a non-critical value lag behind urgent updates.'),

-- Q123
('React.js', 'Which hook is designed for subscribing to external stores?', 'useSyncExternalStore', 'useExternalState', 'useStoreOnly', 'useSubscribeReact', 'A', 'Medium', 'useSyncExternalStore provides a standard way to subscribe to external stores.'),

-- Q124
('React.js', 'Which hook can generate unique IDs?', 'useId', 'useUnique', 'useKeyId', 'useRandomId', 'A', 'Medium', 'useId generates unique IDs suitable for accessibility.'),

-- Q125
('React.js', 'Is useId intended for generating list keys?', 'Yes', 'No', 'Only for API lists', 'Only for CSS', 'B', 'Medium', 'useId is intended for unique IDs, not list keys.'),

-- Q126
('React.js', 'What are the Rules of Hooks?', 'Rules describing where Hooks may be called', 'CSS rules', 'API rules', 'Database rules', 'A', 'Medium', 'Hooks have usage rules that help React preserve hook state correctly.'),

-- Q127
('React.js', 'Where should Hooks generally be called?', 'At the top level of React components or custom Hooks', 'Inside loops', 'Inside conditions', 'Inside event callbacks', 'A', 'Medium', 'Hooks should be called at the top level of components or custom hooks.'),

-- Q128
('React.js', 'Can a Hook normally be called inside an if statement?', 'Yes', 'No', 'Only useState', 'Only useEffect', 'B', 'Medium', 'Conditional Hook calls can change Hook order between renders.'),

-- Q129
('React.js', 'Can Hooks normally be called inside loops?', 'Yes', 'No', 'Only useMemo', 'Only custom Hooks', 'B', 'Medium', 'Hooks should not be called inside loops.'),

-- Q130
('React.js', 'Why must Hooks follow a consistent call order?', 'React associates Hook state with their call order', 'CSS requires it', 'JavaScript requires it', 'HTML requires it', 'A', 'Medium', 'React relies on consistent Hook call order between renders.'),

-- Q131
('React.js', 'What is mounting?', 'When a component is added to the UI', 'When CSS is loaded', 'When data is deleted', 'When JavaScript is compiled', 'A', 'Medium', 'Mounting refers to a component being added to the rendered tree.'),

-- Q132
('React.js', 'What is unmounting?', 'Removing a component from the UI', 'Adding a component', 'Updating CSS', 'Starting the server', 'A', 'Medium', 'Unmounting occurs when a component is removed from the rendered tree.'),

-- Q133
('React.js', 'What is re-rendering?', 'React calling a component again to determine updated UI', 'Refreshing the browser only', 'Reloading CSS', 'Restarting the server', 'A', 'Medium', 'React may call a component again when state, props, or context changes.'),

-- Q134
('React.js', 'Does every React re-render mean the entire DOM is replaced?', 'Yes', 'No', 'Only with JSX', 'Only with state', 'B', 'Medium', 'React determines the necessary DOM changes rather than replacing the entire DOM.'),

-- Q135
('React.js', 'What can trigger a component render?', 'State updates', 'Parent rendering with changed relevant inputs', 'Context updates', 'All of the above', 'D', 'Medium', 'Multiple factors can cause a component to render.'),

-- Q136
('React.js', 'What is derived state?', 'State that can be calculated from existing props or state', 'Database state', 'CSS state', 'Server state only', 'A', 'Medium', 'Derived values are often better calculated during rendering.'),

-- Q137
('React.js', 'Why avoid unnecessary duplicated state?', 'It can become inconsistent with its source data', 'React does not support state', 'JSX cannot use state', 'CSS prevents it', 'A', 'Medium', 'Duplicated state can create synchronization problems.'),

-- Q138
('React.js', 'What is a pure component or rendering function expected to do?', 'Produce the same output for the same inputs', 'Change the DOM manually every time', 'Make API calls during rendering', 'Modify global variables', 'A', 'Medium', 'React rendering should be kept pure and free from side effects.'),

-- Q139
('React.js', 'Should side effects generally happen during rendering?', 'Yes', 'No', 'Only for CSS', 'Only for JSX', 'B', 'Medium', 'Side effects should occur outside rendering when appropriate.'),

-- Q140
('React.js', 'Which is an example of a side effect?', 'Subscribing to an external data source', 'Calculating 2 + 2', 'Creating JSX from props', 'Reading a local variable', 'A', 'Medium', 'External subscriptions interact with systems outside rendering.'),

-- Q141
('React.js', 'What is Strict Mode?', 'A development-time feature that helps detect potential problems', 'A CSS mode', 'A production database mode', 'A server mode', 'A', 'Medium', 'Strict Mode enables additional development checks.'),

-- Q142
('React.js', 'Does Strict Mode itself fix bugs automatically?', 'Yes', 'No', 'Only state bugs', 'Only CSS bugs', 'B', 'Medium', 'Strict Mode helps reveal problematic patterns but does not automatically fix bugs.'),

-- Q143
('React.js', 'Why might an effect appear to run twice in development under Strict Mode?', 'React may intentionally re-run setup and cleanup sequences to expose bugs', 'Browser always duplicates effects', 'JavaScript is broken', 'CSS triggers it', 'A', 'Medium', 'Development Strict Mode intentionally performs extra checks for effects.'),

-- Q144
('React.js', 'Is this extra Strict Mode behavior the same as production behavior?', 'Yes, always', 'No', 'Only in Chrome', 'Only in Firefox', 'B', 'Medium', 'Some development-only Strict Mode checks do not occur the same way in production.'),

-- Q145
('React.js', 'What is state batching?', 'Grouping multiple state updates so React can process them efficiently', 'Combining CSS', 'Combining API requests automatically', 'Joining components permanently', 'A', 'Medium', 'React can batch multiple state updates to reduce unnecessary renders.'),

-- Q146
('React.js', 'Which setter form is useful when the next state depends on the previous state?', 'Functional updater', 'String updater', 'CSS updater', 'Direct DOM updater', 'A', 'Medium', 'Functional updates derive the next state from the previous value.'),

-- Q147
('React.js', 'Which is a functional state update?', 'setCount(c => c + 1)', 'setCount = c + 1', 'count.set(1)', 'updateCount(c + 1)', 'A', 'Medium', 'The setter receives a function that calculates the next state.'),

-- Q148
('React.js', 'Why can functional state updates be useful?', 'They correctly handle multiple updates based on previous state', 'They remove JSX', 'They create APIs', 'They prevent all renders', 'A', 'Medium', 'Functional updates avoid relying on potentially stale values.'),

-- Q149
('React.js', 'What is stale state?', 'Using a state value from an older render when a newer value is expected', 'Deleted state', 'CSS state', 'Server state', 'A', 'Medium', 'Closures and asynchronous logic can capture values from an earlier render.'),

-- Q150
('React.js', 'What is a closure in JavaScript?', 'A function with access to variables from its outer lexical scope', 'A CSS selector', 'A React component only', 'A database connection', 'A', 'Medium', 'A closure allows a function to access variables from its surrounding lexical scope.'),

-- Q151
('React.js', 'What is server-side rendering (SSR)?', 'Rendering HTML on the server before sending it to the client', 'Rendering only CSS', 'Rendering SQL', 'Rendering Java bytecode', 'A', 'Hard', 'SSR generates HTML on the server before delivering it to the browser.'),

-- Q152
('React.js', 'What is client-side rendering (CSR)?', 'Rendering the UI primarily in the browser using JavaScript', 'Rendering only on a database server', 'Rendering HTML in SQL', 'Rendering CSS on the server', 'A', 'Hard', 'CSR typically renders the application in the browser using JavaScript.'),

-- Q153
('React.js', 'What is hydration?', 'Attaching React behavior to server-rendered HTML', 'Loading CSS', 'Connecting a database', 'Compressing JavaScript', 'A', 'Hard', 'Hydration lets React take over server-rendered HTML and make it interactive.'),

-- Q154
('React.js', 'What is code splitting?', 'Splitting JavaScript code into smaller chunks loaded when needed', 'Splitting HTML tags', 'Splitting databases', 'Splitting CSS colors', 'A', 'Hard', 'Code splitting can reduce the JavaScript required for the initial page load.'),

-- Q155
('React.js', 'Which React API supports loading components lazily?', 'lazy()', 'splitCode()', 'loadLater()', 'asyncComponent()', 'A', 'Hard', 'lazy allows component code to be loaded on demand.'),

-- Q156
('React.js', 'What is Suspense primarily used for?', 'Showing fallback UI while some content is not ready', 'Creating CSS', 'Managing SQL', 'Creating state only', 'A', 'Hard', 'Suspense lets React display fallback content while a child is suspended.'),

-- Q157
('React.js', 'What is a key benefit of code splitting?', 'Smaller initial JavaScript payload', 'More database tables', 'More HTML tags', 'Automatic bug fixing', 'A', 'Hard', 'Users can download only the code needed initially.'),

-- Q158
('React.js', 'What is accessibility in React development?', 'Making applications usable by people with different abilities', 'Increasing animation speed', 'Making APIs faster', 'Reducing database size', 'A', 'Hard', 'Accessible applications use semantic HTML, keyboard support, labels, and appropriate ARIA.'),

-- Q159
('React.js', 'Which HTML element is preferable for a clickable action?', '<button>', '<div>', '<span>', '<p>', 'A', 'Hard', 'A button provides built-in semantics and keyboard behavior for actions.'),

-- Q160
('React.js', 'Why are labels important for form accessibility?', 'They associate descriptive text with form controls', 'They add CSS automatically', 'They create APIs', 'They prevent rendering', 'A', 'Hard', 'Labels help users understand and interact with form controls.'),

-- Q161
('React.js', 'Which attribute connects a label to an input in HTML or JSX?', 'htmlFor', 'labelForInput', 'forInput', 'connectLabel', 'A', 'Hard', 'In JSX, htmlFor corresponds to the input id.'),

-- Q162
('React.js', 'What is an ARIA attribute used for?', 'Improving accessibility semantics when native HTML is insufficient', 'Database access', 'CSS compilation', 'API routing', 'A', 'Hard', 'ARIA provides additional accessibility semantics.'),

-- Q163
('React.js', 'Which attribute can identify the accessible name relationship for an element?', 'aria-labelledby', 'aria-name-only', 'accessibility-label-id', 'label-react', 'A', 'Hard', 'aria-labelledby references another element that provides the accessible name.'),

-- Q164
('React.js', 'What is React Router commonly used for?', 'Client-side routing in React applications', 'Database routing', 'CSS routing', 'API encryption', 'A', 'Hard', 'React Router provides routing capabilities for React applications.'),

-- Q165
('React.js', 'What is a route?', 'A mapping between a URL or path and UI', 'A CSS class', 'A database table', 'A React hook only', 'A', 'Hard', 'A route determines which UI should be displayed for a given URL.'),

-- Q166
('React.js', 'What is a dynamic route?', 'A route containing a variable path segment', 'A route with animation', 'A route using CSS', 'A route without a URL', 'A', 'Hard', 'Dynamic routes can capture values from URL segments.'),

-- Q167
('React.js', 'What is an API?', 'Application Programming Interface', 'Application Page Interface', 'Advanced Programming Input', 'Application Process Index', 'A', 'Hard', 'API stands for Application Programming Interface.'),

-- Q168
('React.js', 'Which browser API is commonly used to make HTTP requests?', 'fetch()', 'httpReact()', 'requestReact()', 'getAPIOnly()', 'A', 'Hard', 'The browser fetch API can make HTTP requests.'),

-- Q169
('React.js', 'Which HTTP method is commonly used to retrieve data?', 'GET', 'POST', 'DELETE', 'PATCH', 'A', 'Hard', 'GET is commonly used to retrieve resources.'),

-- Q170
('React.js', 'Which HTTP method is commonly used to create data?', 'POST', 'GET', 'READ', 'FETCH', 'A', 'Hard', 'POST is commonly used to submit data for creation.'),

-- Q171
('React.js', 'Which HTTP method is commonly associated with replacing a resource?', 'PUT', 'GET', 'FETCH', 'READ', 'A', 'Hard', 'PUT commonly represents replacing a resource.'),

-- Q172
('React.js', 'Which HTTP method is commonly used for partial updates?', 'PATCH', 'GET', 'READ', 'CHANGE-ONLY', 'A', 'Hard', 'PATCH is designed for partial modifications.'),

-- Q173
('React.js', 'Which HTTP method is commonly used to delete data?', 'DELETE', 'REMOVE', 'CLEAR', 'DESTROY-HTTP', 'A', 'Hard', 'DELETE requests removal of a resource.'),

-- Q174
('React.js', 'What does JSON stand for?', 'JavaScript Object Notation', 'Java Source Object Network', 'JavaScript Online Node', 'JSON Object Network', 'A', 'Hard', 'JSON stands for JavaScript Object Notation.'),

-- Q175
('React.js', 'Which method converts a JSON response body into a JavaScript value?', 'response.json()', 'response.toJS()', 'response.parseJSON()', 'response.convert()', 'A', 'Hard', 'response.json asynchronously parses a response body as JSON.'),

-- Q176
('React.js', 'What does async/await help with?', 'Writing asynchronous code in a more readable style', 'Styling components', 'Creating JSX tags', 'Managing CSS', 'A', 'Hard', 'async/await provides syntax for working with Promises.'),

-- Q177
('React.js', 'Which keyword declares an asynchronous function?', 'async', 'await', 'promise', 'defer', 'A', 'Hard', 'async declares a function that returns a Promise.'),

-- Q178
('React.js', 'Which keyword waits for a Promise inside an async function?', 'await', 'waitFor', 'pause', 'promiseWait', 'A', 'Hard', 'await waits for a Promise to settle inside an async function.'),

-- Q179
('React.js', 'What is an npm package?', 'A reusable software package managed by npm', 'A CSS selector', 'A browser', 'A database', 'A', 'Hard', 'npm is a package manager and registry ecosystem for JavaScript packages.'),

-- Q180
('React.js', 'What does npm stand for historically?', 'Node Package Manager', 'New Programming Method', 'Node Program Module', 'Network Package Method', 'A', 'Hard', 'npm is commonly expanded as Node Package Manager.'),

-- Q181
('React.js', 'Which file commonly stores npm project dependencies and scripts?', 'package.json', 'react.json', 'project.js', 'npm.config.js', 'A', 'Hard', 'package.json contains project metadata, dependencies, and scripts.'),

-- Q182
('React.js', 'Which command commonly installs project dependencies from package.json?', 'npm install', 'npm start-install', 'npm packages', 'install npm-project', 'A', 'Hard', 'npm install installs dependencies listed in the project configuration.'),

-- Q183
('React.js', 'What is Vite?', 'A modern frontend build tool and development server', 'A database', 'A CSS language', 'A React component', 'A', 'Hard', 'Vite provides fast development tooling and production builds.'),

-- Q184
('React.js', 'What is a build tool used for?', 'Transforming and bundling application source code for development or production', 'Creating databases only', 'Writing HTML manually', 'Managing passwords', 'A', 'Hard', 'Build tools process application assets and code for development and deployment.'),

-- Q185
('React.js', 'What is TypeScript?', 'A typed superset of JavaScript', 'A database', 'A CSS framework', 'An operating system', 'A', 'Hard', 'TypeScript adds static typing and other features to JavaScript.'),

-- Q186
('React.js', 'Can React be used with TypeScript?', 'Yes', 'No', 'Only with class components', 'Only on servers', 'A', 'Hard', 'React applications can be written using TypeScript and TSX.'),

-- Q187
('React.js', 'What file extension is commonly used for React with TypeScript JSX?', '.tsx', '.jsxs', '.reactts', '.tsreact', 'A', 'Hard', 'TSX files support TypeScript with JSX syntax.'),

-- Q188
('React.js', 'What is a component library?', 'A collection of reusable UI components', 'A database library', 'A programming language', 'An operating system', 'A', 'Hard', 'Component libraries provide reusable interface elements such as buttons and forms.'),

-- Q189
('React.js', 'What is state management?', 'Managing application data and changes over time', 'Managing CSS colors', 'Managing HTML tags only', 'Managing servers only', 'A', 'Hard', 'State management involves storing, updating, and sharing application state.'),

-- Q190
('React.js', 'Which is built into React for local component state?', 'useState', 'Redux', 'MobX', 'Zustand', 'A', 'Hard', 'useState is a built-in React Hook for local state.'),

-- Q191
('React.js', 'Redux is:', 'A state management library', 'A CSS framework', 'A database', 'A browser', 'A', 'Hard', 'Redux is a predictable state management library.'),

-- Q192
('React.js', 'What is a selector in state management?', 'A function or mechanism used to read or derive specific state', 'A CSS selector only', 'An HTML tag', 'A server endpoint', 'A', 'Hard', 'Selectors retrieve or derive the portion of application state a component needs.'),

-- Q193
('React.js', 'What is a reducer in Redux?', 'A function that calculates the next state from state and action', 'A CSS file', 'An API endpoint', 'A component only', 'A', 'Hard', 'Redux reducers are pure functions that calculate the next state.'),

-- Q194
('React.js', 'What is an action in Redux?', 'An object describing something that happened', 'A CSS class', 'A React component', 'A database table', 'A', 'Hard', 'Actions describe events and are dispatched to the store.'),

-- Q195
('React.js', 'What is a Redux store?', 'An object that holds application state and manages updates', 'A browser cache', 'A React component', 'A CSS container', 'A', 'Hard', 'A Redux store holds Redux state and provides dispatch and subscription mechanisms.'),

-- Q196
('React.js', 'What is testing in React?', 'Verifying that components and application behavior work as expected', 'Styling components', 'Creating databases', 'Writing CSS only', 'A', 'Hard', 'React testing checks UI behavior, interactions, state changes, and integration.'),

-- Q197
('React.js', 'Which tool is commonly used for JavaScript or React unit testing?', 'Jest', 'MySQL', 'Git', 'Bootstrap', 'A', 'Hard', 'Jest is a popular JavaScript testing framework.'),

-- Q198
('React.js', 'Which library focuses on testing React components from the users perspective?', 'React Testing Library', 'React Database Library', 'React CSS Tester', 'JSX Validator Only', 'A', 'Hard', 'React Testing Library encourages testing through accessible UI behavior and user interactions.'),

-- Q199
('React.js', 'What is the main goal of component reusability?', 'Reduce duplication and make UI easier to maintain', 'Increase duplicate code', 'Remove JavaScript', 'Avoid all testing', 'A', 'Hard', 'Reusable components make applications easier to develop, maintain, and extend.'),

-- Q200
('React.js', 'Which statement best describes React?', 'A database management system', 'A JavaScript library for building component-based user interfaces', 'A backend-only framework', 'A CSS-only framework', 'B', 'Hard', 'React is a JavaScript library centered around building user interfaces from reusable components.');

-- Verification
SELECT COUNT(*) AS react_questions
FROM questions
WHERE skill = 'React.js';

SELECT COUNT(DISTINCT question) AS unique_react_questions
FROM questions
WHERE skill = 'React.js';

SELECT
    skill,
    COUNT(*) AS total_questions,
    COUNT(DISTINCT question) AS unique_questions,
    COUNT(*) - COUNT(DISTINCT question) AS duplicate_questions
FROM questions
GROUP BY skill
ORDER BY skill;

