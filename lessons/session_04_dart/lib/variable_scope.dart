const global = 'Hello World';
void main () {
  const local = 'Hello Main';
  if (2 > 1) {
    const insideIf = 'Hello anybody';
    print(global);
    print(local);
    print(insideIf);
  }
  print(global);
  print(local);
}