// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "../base/HelixBase.sol";
import "../libraries/HelixConfigHelper.sol";
import "../interfaces/IHelixAuthoriser.sol";
import "../interfaces/IHelixUniqueIdentity0612.sol";
import "../interfaces/IHelixConfig.sol";
/**
 * @title HelixAuthoriser
 * @notice This contract checks whether the provided account is authorized
 * for use of the protocol for any of the UID token types.
 * @author Helix
 */

contract HelixAuthoriser is IHelixAuthoriser, HelixBase {
  IHelixConfig public config;
  using HelixConfigHelper for IHelixConfig;
  
  address public override uniqueIdentity;

  uint256[11] public allIdTypes;
  event HelixConfigUpdated(address indexed who, address configAddress);

  /// Initialize HelixAuthoriser contract
  /// @param owner Owner of authorizer contract
  /// @param _config The HelixConfig contract's address
  /// @param _uniqueIdentity The HelixUniqueIdentity contract's address
  function initialize(
    address owner,
    IHelixConfig _config,
    address _uniqueIdentity
  ) public initializer {
    require(
      owner != address(0) && address(_config) != address(0) && _uniqueIdentity != address(0),
      "Owner and config and UniqueIdentity addresses cannot be empty"
    );
    __HelixBase_init(owner);
    _performUpgrade();
    config = _config;
    uniqueIdentity = _uniqueIdentity;
  }

  function performUpgrade() external onlyAdmin {
    return _performUpgrade();
  }

  function _performUpgrade() internal {
    allIdTypes[0] = ID_TYPE_0;
    allIdTypes[1] = ID_TYPE_1;
    allIdTypes[2] = ID_TYPE_2;
    allIdTypes[3] = ID_TYPE_3;
    allIdTypes[4] = ID_TYPE_4;
    allIdTypes[5] = ID_TYPE_5;
    allIdTypes[6] = ID_TYPE_6;
    allIdTypes[7] = ID_TYPE_7;
    allIdTypes[8] = ID_TYPE_8;
    allIdTypes[9] = ID_TYPE_9;
    allIdTypes[10] = ID_TYPE_10;
  }

  /**
   * @notice Returns whether the provided account is authorized for use of the Helix protocol
   * for defined UID token types
   * @param account The account whose authorize status to obtain
   * @param onlyIdTypes Array of id types to check balances
   * @return The account's authorize status
   */
  function authorizeOnlyIdTypes(address account, uint256[] memory onlyIdTypes) public view override returns (bool) {
    require(account != address(0), "Zero address is not authoriser-listed");

    for (uint256 i = 0; i < onlyIdTypes.length; ++i) {
      uint256 idTypeBalance = IHelixUniqueIdentity0612(uniqueIdentity).balanceOf(account, onlyIdTypes[i]);
      if (idTypeBalance > 0) {
        return true;
      }
    }
    return false;
  }


  /**
   * @notice Returns whether the provided account is authozied for any UID type
   * @param account The account whose authorization status to obtain
   * @return The account's authorization status
   */
  function authorize(address account) public view override returns (bool) {
    return authorizeOnlyIdTypes(account, getAllIdTypes());
  }

   /**
   * @notice Returns a dynamic array of all UID types
   */
  function getAllIdTypes() public view returns (uint256[] memory) {
    // create a dynamic array and copy the fixed array over so we return a dynamic array
    uint256[] memory _allIdTypes = new uint256[](allIdTypes.length);
    for (uint256 i = 0; i < allIdTypes.length; i++) {
      _allIdTypes[i] = allIdTypes[i];
    }

    return _allIdTypes;
  }
}