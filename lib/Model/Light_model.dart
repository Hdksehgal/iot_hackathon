enum Status{
  working,
  fused,
  restoring,
}

const report = {
  Status.working : "working",
  Status.fused : "fused",
  Status.restoring : "restoring",
};

class Light {
   Light({required this.lightNum, required this.location }) : status = Status.working;
  final int lightNum;
  final String location;
   Status status;
}