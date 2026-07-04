//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

abstract contract UtilsGuard {
  error NonZeroAddress();
  error NonZeroValue();
  error NotSameValue();
  error NotSameAddress();
  error RequestFailed();
  error ActionNotAllowed();
  error InvalidArgument();
  error MinDepositExceedCap();

  uint256 internal constant YEAR = 365 days;

  /// @notice Value by which all rewards are magnified for calculation
  uint256 internal constant REWARD_MAGNITUDE = 2 ** 128;

  modifier nonZeroAddress(address _addr) {
    if (_addr == address(0)) revert NonZeroAddress();
    _;
  }
  modifier nonZeroValue(uint256 _val) {
    if (_val == 0) revert NonZeroValue();
    _;
  }
  modifier nonSameValue(uint256 _val1, uint256 _val2) {
    if (_val1 == _val2) revert NotSameValue();
    _;
  }

  modifier nonSameAddress(address _addr1, address _addr2) {
    if (_addr1 == _addr2) revert NotSameAddress();
    _;
  }

  function toWei(uint256 amount_, uint256 decimals) internal pure returns (uint256) {
    return amount_ * 10 ** (18 - decimals);
  }

  function fromWei(uint256 amount_, uint256 decimals) internal pure returns (uint256) {
    return amount_ / 10 ** (18 - decimals);
  }
}
