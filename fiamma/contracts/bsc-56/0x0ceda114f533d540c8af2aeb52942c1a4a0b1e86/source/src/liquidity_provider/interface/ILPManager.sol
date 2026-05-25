// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "lib/btc-light-client/packages/contracts/src/interfaces/BtcTxProof.sol";

enum LPStatus {
    UNREGISTERED,
    ACTIVE,
    SUSPENDED,
    TERMINATED
}

struct LPRegister {
    uint256 lp_id;
    string bitcoin_addr;
    address evm_addr;
    uint256 fee;
}

struct LPInfo {
    uint256 id;
    string bitcoin_addr;
    address evm_addr;
    uint256 fee;
    LPStatus status;
}

struct LPWithdraw {
    uint256 id;
    uint256 withdraw_amount;
    string receiver_addr;
    bytes32 receiver_script_hash;
    uint256 receive_min_amount;
    uint256 fee_rate;
    uint256 timestamp;
    uint256 lp_id;
}

struct LPClaimInfo {
    uint256 withdraw_id;
    uint256 blockNum;
    BtcTxProof inclusionProof;
    uint256 txOutIx;
    uint256 amountSats;
}

interface ILPManager {
    function registerLP(LPRegister calldata _lp_register) external;
    function updateLPStatus(uint256 _lp_id, LPStatus _newStatus) external;
    function isLPActive(uint256 _lp_id) external view returns (bool);
    function getLPInfo(uint256 _lp_id) external view returns (LPInfo memory);
    function getLPStatus(uint256 _lp_id) external view returns (LPStatus);

    event LPRegistered(uint256 indexed id, address indexed evm_addr, string bitcoin_addr, uint256 fee);
    event LPStatusUpdated(uint256 indexed id, LPStatus indexed newStatus);
}
