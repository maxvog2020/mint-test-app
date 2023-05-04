component Counter {
  state counter = 0

  fun increment {
    next { counter: counter + 1 }
  }

  fun decrement {
    next { counter: counter - 1 }
  }

  style counter {
    font-size: 2rem;
    text-decoration: none;
    color: white;
  }

  style text {
    margin: 2rem;
  }

  style button {
    position: relative;
    background: #444;
    color: white;
    text-decoration: none;
    text-transform: uppercase;
    border: none;
    letter-spacing: 0.1rem;
    font-size: 1rem;
    padding: 1rem 3rem;
    transition: 0.2s;
  }

  fun render {
    <div::counter>
      <button::button onClick={decrement}>
        "Decrement"
      </button>

      <span::text>
        <{ Number.toString(counter) }>
      </span>

      <button::button onClick={increment}>
        "Increment"
      </button>
    </div>
  }
}
