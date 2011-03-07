CREATE TABLE "BlogInfo"(
    "id" BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    "Title" VARCHAR(255)
);

CREATE TABLE "Post"(
    "id" BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    "Title" TEXT,
    "Body" TEXT,
    "Posted" TIMESTAMP
);

CREATE TABLE "User"(
    "id" BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    "Name" VARCHAR(64),
    "Hash" VARCHAR(44),
    "Salt" VARCHAR(172)
);

INSERT INTO "User"("id", "Name", "Hash", "Salt") VALUES
(1, 'admin', 'ilPQ0UXsOZMvdpyKmsqlyGdYc9uXzCREqOb7AL1dv2A=', 'ObnNMzW+Ll0LnQP/Hnjb8MsXB8PTaeKKdDPqJvwmtzCQ4EW0FFLsoCqGkInD+rGCKQ42NXFEBSs6TlDQfHuu5xpAT2mX11YhYJv3W8CK5UtMLvYyOg1OzyuSNLsz479wlwmOaZjiketXbPTyQgRMNJIBKk8qHgqLcC08dBVEtT8=');

CREATE TABLE "Comment"(
    "id" BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    "Post_id" BIGINT,
    "Name" VARCHAR(255),
    "Text" TEXT,
    "Posted" TIMESTAMP
);

INSERT INTO "BlogInfo"("id", "Title") VALUES (0, 'RoBlog');