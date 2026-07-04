// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./ICofferErc20.sol";

interface ICofferManageErc20 is ICofferErc20 {
    // Errors
    error ErrorNotSupplyController();
    error ErrorNotPendingSupplyController();
    error ErrorInsufficientUnderlyingBalance(bytes32 addr, uint256 available, uint256 required);

    // Controller Events
    event SupplyControllerTransferred(address indexed oldSupplyController, address indexed newSupplyController);
    event SupplyIncreased(address indexed to, uint256 value);
    event SupplyDecreased(address indexed from, uint256 value);

    function underlyingTotalSupply() external view returns (uint256);
    function underlyingBalanceOf(string memory _owner) external view returns (uint256);

    function transferSupplyController(address _newSupplyController) external;
    function acceptSupplyController() external;

    function increaseSupply(string memory _bitcoinAddress, uint256 _value) external returns (bool success);
    function decreaseSupply(string memory _bitcoinAddress, uint256 _value) external returns (bool success);
    function wipeFrozenAddress(address _addr) external;
    function freezeAddress(address _addr) external;
    function unfreezeAddress(address _addr) external;
}
