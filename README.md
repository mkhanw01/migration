# mybatis_migration
MyBatis Migration Maven Plugin Usage

mvn migration:status  -> to check status of migration script
mvn migration:pending -> to check migration pending script
mvn migration:up      -> to execute pending migration script one by one based on timestamp
mvn migration:down    -> undo last migrated script
