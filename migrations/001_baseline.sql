CREATE TABLE waybill_events (
  event_id TEXT PRIMARY KEY,
  waybill_id TEXT NOT NULL,
  organization_id TEXT NOT NULL,
  document_version INTEGER NOT NULL,
  event_type TEXT NOT NULL,
  payload JSONB NOT NULL,
  created_at TIMESTAMPTZ NOT NULL
);

CREATE TABLE release_tokens (
  token_id TEXT PRIMARY KEY,
  waybill_id TEXT NOT NULL,
  document_version INTEGER NOT NULL,
  status TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL,
  UNIQUE (waybill_id, document_version)
);
