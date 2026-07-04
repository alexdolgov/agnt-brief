// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@btc-light-client/packages/contracts/src/interfaces/BtcTxProof.sol";

/// @notice Base structure containing common fields for Bitcoin transactions
struct BaseTx {
    uint256 value;
    uint256 blockNum;
    BtcTxProof inclusionProof;
    uint256 txOutIx;
    bytes32 destScriptHash;
    uint256 amountSats;
}

struct Peg {
    address to;
    uint256 value;
    uint256 blockNum;
    BtcTxProof inclusionProof;
    uint256 txOutIx;
    bytes32 destScriptHash;
    uint256 amountSats;
}

struct Invest {
    uint256 value;
    uint256 blockNum;
    BtcTxProof inclusionProof;
    uint256 txOutIx;
    bytes32 destScriptHash;
    uint256 amountSats;
    address vault;
    uint8 vaultExtra;
    string userBitcoinAddress;
    bytes32 pubX;
    bytes32 pubY;
    uint256 opReturnOutIx;
    string intentType;
}

interface IBtcPeg {
    function mint(address _to, uint256 _value) external;
    function burn(address _user, uint256 _value) external;

    event BridgeUpdated(address indexed newBridge);
}
