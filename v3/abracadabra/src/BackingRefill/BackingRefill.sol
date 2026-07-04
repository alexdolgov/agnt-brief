// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function burn(uint256 amount) external returns (bool);
}

interface ISDAI is IERC20 {
    function convertToShares(uint256 assets) external view returns (uint256 shares);
    function redeem(uint256 shares, address receiver, address owner) external;
}

interface ITreasury {
    function withdrawReserves(address to, address token, uint256 amount) external;
}

/// @notice this contract allows a client to access ohm's backing in sdai
contract BackingRefill {
    IERC20 public immutable ohm = IERC20(0x64aa3364F17a4D01c6f1751Fd97C2BD3D7e7f1D5);
    ISDAI public immutable sdai = ISDAI(0x83F20F44975D03b1b09e64809B757c47f942BEeA);
    ITreasury public immutable treasury = ITreasury(0xa8687A15D4BE32CC8F0a8a7B9704a4C3993D9613);

    uint256 public immutable backingPerToken = 115 * 1e8;

    address public immutable client;

    constructor(address _client) {
        client = _client;
    }

    /// @notice access token backing for client
    /// @dev client must approve first. ANYONE CAN CALL AFTER APPROVAL.
    function refill (uint256 amount) external {
        ohm.transferFrom(client, address(this), amount);
        ohm.burn(amount);

        uint256 proceeds = getProceeds(amount);
        treasury.withdrawReserves(address(this), address(sdai), proceeds);
        sdai.redeem(proceeds, client, address(this));
    }

    /// @notice get amount of sdai for amount of ohm
    /// @dev ohm amount and backing per token are 9 decimals, sdai amount is 18 decimals
    function getProceeds (uint256 amount) public view returns (uint256) {
        return sdai.convertToShares(amount * backingPerToken);
    }
}