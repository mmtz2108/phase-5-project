import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import ActorList from "./Components/ActorList";


function App() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    fetch("/hello")
      .then((r) => r.json())
      .then((data) => setCount(data.count));
  }, []);

  return (
    <BrowserRouter>
      <div className="App">
        <Switch>
          <Route path="/testing">
            <h1>Test Route</h1>
          </Route>
          <Route exact="/">
            <h1>It's Morbin' Time: {count}</h1>
          </Route>
          <Route path="/actors">
            <ActorList/>
          </Route>
        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;
