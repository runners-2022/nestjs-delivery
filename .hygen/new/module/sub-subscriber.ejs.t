---
to: "src/modules/<%= h.name(name) %>/subscribers/<%= h.subSubscriberFileName(subname) %>.ts"
unless_exists: true
---
<%
  // Class
  ClassName = h.ClassName(name);

  // Name
  NAME = h.NAME(name);
  SUBNAME = h.SUBNAME(subname);

  // Plural
  pluralName = h.pluralName(name);
  subPluralName = h.subPluralName(subname);

  // Module
  moduleName = h.moduleName(name);
  ModuleName = h.ModuleName(name);
  moduleFileName = h.moduleFileName(name);

  // Service
  ServiceName = h.ServiceName(name);
  serviceName = h.serviceName(name);
  serviceFileName = h.serviceFileName(name);

  SubServiceName = h.SubServiceName(subname);
  subServiceFileName = h.subServiceFileName(subname);

  // Dto
  DtoName = h.DtoName(name);
  dtoFileName = h.dtoFileName(name);
  CreateDtoName = h.CreateDtoName(name);
  createDtoName = h.createDtoName(name);
  createDtoFileName = h.createDtoFileName(name);
  UpdateDtoName = h.UpdateDtoName(name);
  updateDtoName = h.updateDtoName(name);
  updateDtoFileName = h.updateDtoFileName(name);
  updateDtoFileName = h.updateDtoFileName(name);

  SubDtoName = h.SubDtoName(subname);
  subDtoFileName = h.subDtoFileName(subname);
  SubCreateDtoName = h.SubCreateDtoName(subname);
  subCreateDtoName = h.subCreateDtoName(subname);
  subCreateDtoFileName = h.subCreateDtoFileName(subname);
  SubUpdateDtoName = h.SubUpdateDtoName(subname);
  subUpdateDtoName = h.subUpdateDtoName(subname);
  subUpdateDtoFileName = h.subUpdateDtoFileName(subname);

  // Entity
  EntityName = h.EntityName(name);
  entityFileName = h.entityFileName(name);

  SubEntityName = h.SubEntityName(subname);
  subEntityFileName = h.subEntityFileName(subname);

  // Repository
  RepositoryName = h.RepositoryName(name);
  repositoryName = h.repositoryName(name);
  repositoryFileName = h.repositoryFileName(name);

  SubRepositoryName = h.SubRepositoryName(subname);
  subRepositoryName = h.subRepositoryName(subname);
  subRepositoryFileName = h.subRepositoryFileName(subname);

  // Subscriber
  SubscriberName = h.SubscriberName(name);
  subscriberFileName = h.subscriberFileName(name);

  SubSubscriberName = h.SubSubscriberName(subname);
  subSubscriberFileName = h.subSubscriberFileName(subname);

  // Controller
  ControllerName = h.ControllerName(name);
  controllerFileName = h.controllerFileName(name);

  SubControllerName = h.SubControllerName(subname);
  subControllerFileName = h.subControllerFileName(subname);

  // Response
  responseFileName = h.responseFileName(name);

  subResponseFileName = h.subResponseFileName(subname);

  // Resource
  resourceName = h.resourceName(name);
  resourceFileName = h.resourceFileName(name);
  resourceOptionsName = h.resourceOptionsName(name);
  resourceOptionsFileName = h.resourceOptionsFileName(name);

  subResourceName = h.subResourceName(subname);
  subResourceFileName = h.subResourceFileName(subname);
  subResourceOptionsName = h.subResourceOptionsName(subname);
  subResourceOptionsFileName = h.subResourceOptionsFileName(subname);
%>// Typeorm
import { Connection, EntitySubscriberInterface, EventSubscriber, InsertEvent, UpdateEvent } from "typeorm";

// Third party
// Entity
import { <%= SubEntityName %> } from "../entities/<%= subEntityFileName %>";

// Main section

@EventSubscriber()
export class <%= SubSubscriberName %> implements EntitySubscriberInterface<<%= SubEntityName %>> {
  constructor(
    connection: Connection,
  ) {
    connection.subscribers.push(this);
  }

  listenTo() {
    return <%= SubEntityName %>;
  }

  // Listener section
  beforeInsert(event: InsertEvent<<%= SubEntityName %>>) {}

  beforeUpdate(event: UpdateEvent<<%= SubEntityName %>>) {}

  afterInsert(event: InsertEvent<<%= SubEntityName %>>) {}

  afterUpdate(event: UpdateEvent<<%= SubEntityName %>>) {}
}
