// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IEVICToken is IERC20 {
    function grantRebaseExclusion(address account) external;
    function revokeRebaseExclusion(address account) external;
    function getExcluded() external view returns (address[] memory);
    function rebase(uint256 epoch, uint256 supplyDelta, bool negative) external returns (uint256);
    function rebaseSupply() external view returns (uint256);
    function isDaoFund(address _address) external view returns (bool);
    function getDaoFund() external view returns (address);
    function getPolWallet() external view returns (address);
    function mint(address recipient, uint256 amount) external returns (bool);
    function calculateTaxRate(uint256 _tokenPrice) external view returns (uint256);
    function TOTAL_GONS() external view returns (uint256);
}