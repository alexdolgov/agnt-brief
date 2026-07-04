// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Collector} from './Collector.sol';
import {IWhitelistedCollector} from './interfaces/IWhitelistedCollector.sol';

import {Ownable} from 'openzeppelin-contracts/contracts/access/Ownable.sol';
import {IERC1155Receiver} from 'openzeppelin-contracts/contracts/token/ERC1155/IERC1155Receiver.sol';
import {IERC721Receiver} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721Receiver.sol';

/**
 * @title WhitelistedCollector
 * @notice Contract that collects tokens and allows for sending them to a whitelisted recipient
 */
contract WhitelistedCollector is Collector, IWhitelistedCollector {
  /// @inheritdoc IWhitelistedCollector
  mapping(address => bool) public whitelisted;

  constructor(
    address initialAdmin,
    address[] memory initialOperators,
    address[] memory initialWhitelisted
  ) Collector(initialAdmin, initialOperators) {
    _whitelist(initialWhitelisted, true);
  }

  /// @inheritdoc IWhitelistedCollector
  function whitelist(address[] calldata _recipients, bool grantOrRevoke)
    external
    onlyRole(DEFAULT_ADMIN_ROLE)
  {
    _whitelist(_recipients, grantOrRevoke);
  }

  function _whitelist(address[] memory _recipients, bool grantOrRevoke) internal {
    for (uint256 i = 0; i < _recipients.length; i++) {
      whitelisted[_recipients[i]] = grantOrRevoke;
    }

    emit Whitelist(_recipients, grantOrRevoke);
  }

  function _checkRecipient(address recipient) internal view override {
    require(whitelisted[recipient], NotWhitelisted());
  }
}
