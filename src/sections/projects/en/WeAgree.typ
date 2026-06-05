#import "../../../template.typ": project

#project("WeAgree", url: "https://github.com/faketut/WeAgree")
- Auto-provisions per-user Ed25519 keypair on GitHub OAuth; SimpleWebAuthn passkeys are optional step-up evidence, not the signing key.
- Each signature stores content hash, payload hash, signature, and key fingerprint under Supabase RLS — tamper-evident per-signer audit.
- On finalize, `final_proof_hash` is anchored `bytes32` to Arbitrum Sepolia via Ethers v6; proof API exports an offline-verifier package.
