// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/access/manager/IAccessManaged.sol";

interface IWrapper is IERC20, IAccessManaged {

    // TODO move to common library
    struct TransferInfo {
        uint256 amount; // amount to transfer
        address token; // token to transfer
    }

    function depositRaw(address dustReceiver) external returns (uint shares);
    function depositRaw(address dustReceiver, address receiver) external returns (uint shares);
    function redeemRaw(uint lpAmount, address receiver)
        external
        returns (
            address[] memory tokens,
            uint[] memory amounts
        );
    function claim(address receiver) external;
    function recoverFunds(TransferInfo calldata transfer, address to) external;

    function depositTokens() external view returns (address[] memory tokens);
    function rewardTokens() external view returns(address[] memory tokens);
    function poolTokens() external view returns(address[] memory tokens);
    function ratios() external returns(address[] memory tokens, uint[] memory ratio);
    function description() external view returns (string memory);
    function reserves() external view returns(address[] memory tokens, uint[] memory amounts);

}
