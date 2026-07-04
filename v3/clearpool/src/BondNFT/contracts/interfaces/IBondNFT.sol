//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {IERC1155Upgradeable} from '@openzeppelin/contracts-upgradeable/token/ERC1155/IERC1155Upgradeable.sol';

struct CallbackParams {
  uint256 endDate;
  uint256 penaltyRate;
  uint256 interestRate;
  uint256 exchangeRate;
}

/**
 * @title Interface for a `BondNFT.sol`;
 */
interface IBondNFT is IERC1155Upgradeable {
  /// @notice Creating a new NFT contract and setting inside parameters;
  function __init(address _poolMasterAddress, string memory _uri) external returns (bool);

  /// @notice Minting tokens;
  function mint(
    address _account,
    uint256 _id,
    uint256 _amount,
    bytes memory _data,
    CallbackParams calldata _callBackParams
  ) external;

  /// @notice Burning tokens;
  function burn(address _account, uint256 _id, uint256 _amount) external;

  /// @notice Return balance of `msg.sender`;
  function balanceOf(address account, uint256 id) external view returns (uint256);

  /// @notice Return id information params;
  function tokenData(uint256 id) external view returns (CallbackParams memory);


  function setExchangeRate(uint256 id, uint256 exchangeRate) external;

  /// @notice Minting batch tokens;
  function mintBatch(
    address _to,
    uint256[] memory _ids,
    uint256[] memory _amounts,
    bytes memory _data
  ) external;

  /// @notice Burning batch tokens;
  function burnBatch(address _account, uint256[] memory _ids, uint256[] memory _amounts) external;
}
