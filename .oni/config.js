const activate = (oni) => {
  // unbind the default `<c-p>` action:
  oni.input.unbind("<c-p>")

  // bind a new action:
  oni.input.bind("<c-enter>", () => alert("Pressed control enter"));
};

module.exports = {
  // activate,
  "oni.useDefaultConfig": false,
  "oni.loadInitVim": true,
  "editor.fontSize": "13px",
  "editor.fontFamily": "FiraCode-Light",
  "editor.linePadding": 3,
  "statusbar.enabled": false,
};
