part of default_project;

// data/gen/default/project/model_entries.dart

class ProjectEntries extends ModelEntries {
  ProjectEntries(Model model) : super(model);

  Map<String, Entities> newEntries() {
    var entries = new Map<String, Entities>();
    var concept;
    concept = model.concepts.singleWhereCode("Project");
    entries["Project"] = new Projects(concept);
    return entries;
  }

  Entities? newEntities(String conceptCode) {
    var concept = model.concepts.singleWhereCode(conceptCode);
    if (concept == null) {
      throw new ConceptError("${conceptCode} concept does not exist.");
    }
    if (concept.code == "Project") {
      return new Projects(concept);
    }

    throw new ConceptError("${conceptCode} is not a Project concept.");
  }

  Entity? newEntity(String conceptCode) {
    var concept = model.concepts.singleWhereCode(conceptCode);
    if (concept == null) {
      throw new ConceptError("${conceptCode} concept does not exist.");
    }
    if (concept.code == "Project") {
      return new Project(concept);
    }

    throw new EDNetException('Unsupported concept: ' + conceptCode);
  }

  fromJsonToData() {
    fromJson(defaultProjectDataJson);
  }

  Projects get projects => getEntry("Project") as Projects;
}
