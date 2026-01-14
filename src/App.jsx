import { BrowserRouter, Routes, Route } from "react-router-dom";
import Income from "./pages/Income.jsx";

const App = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/income" element={<Income />} />
      </Routes>
    </BrowserRouter>
  );
};

export default App;
