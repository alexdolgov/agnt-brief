// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ExtendedERC721.sol';

contract SilentDataRollupERC721 is ExtendedERC721 {
  bytes4 private constant FUNC_SELECTOR_BALANCE_OF = bytes4(keccak256('balanceOf(address)'));
  bytes32 public constant VIEWER_ROLE = keccak256('VIEWER_ROLE');

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize(
    string memory name_,
    string memory symbol_,
    bool kycEnabled_,
    bool blacklistEnabled_
  ) public override initializer {
    super.initialize(name_, symbol_, kycEnabled_, blacklistEnabled_);
    _grantRole(VIEWER_ROLE, msg.sender);
  }

  /**
   * @dev Changes the owner of the contract.
   * This function revokes all roles from the current owner and grants them to the new owner.
   * The function can only be called by an account with the DEFAULT_ADMIN_ROLE.
   *
   * @param newOwnerAddress The address of the new owner to whom all roles will be granted.
   */
  function changeOwner(address newOwnerAddress) public override onlyRole(DEFAULT_ADMIN_ROLE) {
    _revokeRole(DEFAULT_ADMIN_ROLE, _msgSender());
    _revokeRole(PAUSER_ROLE, _msgSender());
    _revokeRole(MINTER_ROLE, _msgSender());
    _revokeRole(WIPER_ROLE, _msgSender());
    _revokeRole(KYC_ROLE, _msgSender());
    _revokeRole(VIEWER_ROLE, _msgSender());

    _grantRole(DEFAULT_ADMIN_ROLE, newOwnerAddress);
    _grantRole(PAUSER_ROLE, newOwnerAddress);
    _grantRole(MINTER_ROLE, newOwnerAddress);
    _grantRole(WIPER_ROLE, newOwnerAddress);
    _grantRole(KYC_ROLE, newOwnerAddress);
    _grantRole(VIEWER_ROLE, newOwnerAddress);
  }

  /**
   * @dev Returns the balance of `account` if the caller has access to it, reverts otherwise.
   */
  function balanceOf(address account) public view override(ERC721Upgradeable, IERC721) returns (uint256) {
    if (msg.sig == FUNC_SELECTOR_BALANCE_OF) {
      bool hasAccess = hasRole(DEFAULT_ADMIN_ROLE, msg.sender) ||
        hasRole(PAUSER_ROLE, msg.sender) ||
        hasRole(VIEWER_ROLE, msg.sender);
      require(
        hasAccess || account == msg.sender,
        'SilentDataRollupERC721: Only caller with roles DEFAULT_ADMIN_ROLE or PAUSER_ROLE or VIEWER_ROLE granted or get its own balance.'
      );
    }
    return super.balanceOf(account);
  }

  /**
   * @dev Returns if a document hash exists in the dictionary as a value.
   */
  function isHashRegistered(bytes32 documentHash) public view override returns (bool) {
    bool hasAccess = hasRole(DEFAULT_ADMIN_ROLE, msg.sender) ||
      hasRole(PAUSER_ROLE, msg.sender) ||
      hasRole(VIEWER_ROLE, msg.sender);
    require(
      hasAccess,
      'SilentDataRollupERC721: Only caller with roles DEFAULT_ADMIN_ROLE or PAUSER_ROLE or VIEWER_ROLE granted.'
    );
    return DocumentHashRegistry.isHashRegistered(documentHash);
  }
}
