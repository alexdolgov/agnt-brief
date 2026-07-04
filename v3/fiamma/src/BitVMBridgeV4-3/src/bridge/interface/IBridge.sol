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
    address sidechainUser;
    address vault;
    uint256 opReturnOutIx;
    string intentType;
}

interface IBitVMBridge {
    function mint(Peg[] calldata pegs) external;
    function burn(string calldata _btc_addr, uint256 fee_rate, uint256 _value, uint256 _operator_id) external;

    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, string btc_addr, uint256 fee_rate, uint256 value, uint256 operator_id);
    event WithdrawByLP(
        address indexed from,
        uint256 withdraw_id,
        string btc_addr,
        uint256 fee_rate,
        uint256 value,
        uint256 lp_id,
        uint256 receive_min_amount
    );
    event ClaimLPWithdraw(uint256 indexed withdraw_id, uint256 indexed lp_id, address evm_addr, uint256 value);
    event RefundLPWithdraw(uint256 indexed withdraw_id, address receiver, uint256 value);
    event PWithdrawTimeoutUpdated(uint256 lp_withdraw_timeout);
    event LPManagerUpdated(address lp_manager);
}

interface IInvest {
    function mint_for_invest(Invest[] calldata invests) external;

    event InvestMinted(address sidechainUser, bytes32 tx_hash, uint256 value, address vault);
}
