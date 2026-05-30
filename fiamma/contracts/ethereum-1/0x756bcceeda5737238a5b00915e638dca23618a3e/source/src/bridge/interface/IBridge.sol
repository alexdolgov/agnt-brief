// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./IBtcPeg.sol";

interface IBitVMBridge {
    function mint(Peg[] calldata pegs) external;
    function burn(string calldata _btc_addr, uint256 fee_rate, uint256 _value, uint256 _operator_id) external;

    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, string btc_addr, uint256 fee_rate, uint256 value, uint256 operator_id);
    event WithdrawByLP(
        address indexed from, uint256 lp_withdraw_id, string btc_addr, uint256 fee_rate, uint256 value, uint256 lp_id
    );
    event ClaimLPWithdraw(uint256 indexed lp_withdraw_id, uint256 indexed lp_id, address evm_addr, uint256 value);
    event RefundLPWithdraw(uint256 indexed lp_withdraw_id, address receiver, uint256 value);
    event PWithdrawTimeoutUpdated(uint256 lp_withdraw_timeout);
    event LPManagerUpdated(address lp_manager);
}

interface IInvest {
    function mint_for_invest(Invest[] calldata invests) external;

    event InvestMinted(string user_address, bytes32 tx_hash, uint256 value, address vault, uint8 vault_extra);
}
