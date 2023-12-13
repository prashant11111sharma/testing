import { BrowserRouter, Route, Routes } from "react-router-dom";
import "./App.css";
import TestingOne from "./pages/TestingOne";
import TestingTwo from "./pages/TestingTwo";
function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<TestingTwo />}>
          <Route path="testingOne" element={<TestingOne />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
