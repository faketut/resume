#import "../../../template.typ": project

#project("WeAgree", url: "https://github.com/faketut/WeAgree")
- Auto-provisioned per-user Ed25519 keypair on GitHub OAuth; SimpleWebAuthn passkeys layered on as optional step-up evidence, not the signing key.
- Each signature stores content hash, payload hash, signature, and key fingerprint under Supabase RLS — tamper-evident audit trail per signer.
- On finalize, canonical `final_proof_hash` is anchored `bytes32` to Arbitrum Sepolia via Ethers v6; proof API exports a self-contained package for an offline verifier.
