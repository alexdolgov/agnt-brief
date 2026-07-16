// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {ISynthereumFinder} from '../../core/interfaces/IFinder.sol';
import {IStandardERC20} from '../../base/interfaces/IStandardERC20.sol';
import {ISuperToken} from './interfaces/ISuperToken.sol';
import {EnumerableSet} from '../../../@openzeppelin/contracts/utils/structs/EnumerableSet.sol';
import {StringUtils} from '../../base/utils/StringUtils.sol';
import {StakedSyntheticToken} from './StakedSyntheticToken.sol';
import {ReentrancyGuard} from '../../../@openzeppelin/contracts/security/ReentrancyGuard.sol';
import {StandardAccessControlEnumerable} from '../../common/roles/StandardAccessControlEnumerable.sol';

contract StakedSyntheticTokenFactory is
  ReentrancyGuard,
  StandardAccessControlEnumerable
{
  using EnumerableSet for EnumerableSet.Bytes32Set;
  using StringUtils for string;
  using StringUtils for bytes32;

  ISynthereumFinder public immutable synthereumFinder;

  mapping(string => address) private stakedTokens;

  EnumerableSet.Bytes32Set private syntheticTokens;

  event StakedTokenCreated(
    address indexed jAsset,
    address indexed asset,
    address indexed stakedToken
  );

  constructor(ISynthereumFinder _finder, Roles memory _roles) {
    synthereumFinder = _finder;
    _setAdmin(_roles.admin);
    _setMaintainer(_roles.maintainer);
  }

  /**
   * @notice Create a staked-token associated to synthetic asset
   * @param _jAsset Synthetic asset
   * @param _asset SuperToken asset wrapping synthetic token
   * @param _tokenName Name of the staked-token
   * @param _tokenSymbol Symbol of the staked-token
   * @return stakedTokenContract Address of the staked-token deployed
   */
  function createStakedToken(
    IStandardERC20 _jAsset,
    ISuperToken _asset,
    string memory _tokenName,
    string memory _tokenSymbol
  )
    external
    onlyMaintainer
    nonReentrant
    returns (StakedSyntheticToken stakedTokenContract)
  {
    require(
      address(_jAsset) == _asset.getUnderlyingToken(),
      'Wrong underlying token'
    );
    string memory symbol = _jAsset.symbol();
    require(
      syntheticTokens.add(symbol.stringToBytes32()),
      'Staked token already created'
    );
    stakedTokenContract = new StakedSyntheticToken(
      synthereumFinder,
      _tokenName,
      _tokenSymbol,
      _asset
    );
    address stakedTokenAddr = address(stakedTokenContract);

    stakedTokens[symbol] = stakedTokenAddr;

    emit StakedTokenCreated(address(_jAsset), address(_asset), stakedTokenAddr);
  }

  /**
   * @notice Returns the address of the staked-token associated to a synthetic asset
   * @param _tokenSymbol Synthetic asset symbol
   * @return Address of the staked-token
   */
  function stakedToken(string calldata _tokenSymbol)
    external
    view
    returns (address)
  {
    address stakedTokenAddr = stakedTokens[_tokenSymbol];
    require(stakedTokenAddr != address(0), 'Staked token not supported');
    return stakedTokenAddr;
  }

  /**
   * @notice Returns all the synthetic token symbol used
   * @return List of all synthetic token symbol
   */
  function getSyntheticTokens() external view returns (string[] memory) {
    uint256 numberOfSynthTokens = syntheticTokens.length();
    string[] memory synthTokens = new string[](numberOfSynthTokens);
    for (uint256 j = 0; j < numberOfSynthTokens; j++) {
      synthTokens[j] = syntheticTokens.at(j).bytes32ToString();
    }
    return synthTokens;
  }
}
