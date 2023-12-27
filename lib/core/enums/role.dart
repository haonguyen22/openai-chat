enum Role {
  user("user", "Me"),
  assistant("assistant", "Bot");

  final String title;
  final String name;
  const Role(this.name, this.title);
}

