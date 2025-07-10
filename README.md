# Template CheckIt Bank

## Usage

- Click "Use this template" to create a new repository.
- On the new repository, click "Code" and select the "Codespaces" tab.
  Then click "Create codespace on main".
- You should be good to go once the following message finishes:

```
Use Cmd/Ctrl + Shift + P -> View Creation Log to see full logs
✔ Finishing up...
⠏ Running postCreateCommand...
  › bash .devcontainer/setup.sh
```

- Open a new terminal and run `python -m checkit --help` for options.

## Previewing bank

Quick instructions:

```
python -m checkit generate
python -m checkit viewer
python -m http.server -d docs
```

## About CheckIt

Learn more at <https://github.com/StevenClontz/checkit>
and <https://github.com/StevenClontz/checkit/wiki>.
