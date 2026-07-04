// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Ownable } from '@oz/access/Ownable.sol';
import { EnumerableSet } from '@oz/utils/structs/EnumerableSet.sol';

import { IReclaimQueue } from '@mito-mainnet/interfaces/hub/IReclaimQueue.sol';
import { StdError } from '@mito-mainnet/lib/StdError.sol';

contract ResolverRouter is Ownable {
  using EnumerableSet for EnumerableSet.AddressSet;

  event ResolverSet(address indexed vault, address indexed resolver);
  event ResolverRemoved(address indexed vault, address indexed resolver);

  error ResolverAlreadySet(address vault, address resolver);
  error ResolverNotSet(address vault, address resolver);
  error MaxResolversReached(address vault);

  uint256 public constant MAX_RESOLVERS = 10;

  IReclaimQueue public immutable reclaimQueue;
  mapping(address => EnumerableSet.AddressSet) private _resolvers;

  constructor(address _reclaimQueue) Ownable(_msgSender()) {
    reclaimQueue = IReclaimQueue(_reclaimQueue);
  }

  function isResolver(address vault, address resolver) external view returns (bool) {
    return _resolvers[vault].contains(resolver);
  }

  function getResolvers(address vault) external view returns (address[] memory) {
    return _resolvers[vault].values();
  }

  function setResolver(address vault, address resolver) external onlyOwner {
    EnumerableSet.AddressSet storage resolvers = _resolvers[vault];
    require(resolvers.length() <= MAX_RESOLVERS, MaxResolversReached(vault));
    require(!resolvers.contains(resolver), ResolverAlreadySet(vault, resolver));
    resolvers.add(resolver);

    emit ResolverSet(vault, resolver);
  }

  function removeResolver(address vault, address resolver) external onlyOwner {
    EnumerableSet.AddressSet storage resolvers = _resolvers[vault];
    require(resolvers.contains(resolver), ResolverNotSet(vault, resolver));
    resolvers.remove(resolver);

    emit ResolverRemoved(vault, resolver);
  }

  function sync(address vault, uint256 requestCount) external returns (uint256, uint256) {
    require(_resolvers[vault].contains(_msgSender()), StdError.Unauthorized());
    return reclaimQueue.sync(_msgSender(), vault, requestCount);
  }
}
