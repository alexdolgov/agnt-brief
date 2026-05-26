//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {ERC1155Upgradeable} from '@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol';
import {Initializable} from '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import {IPoolMaster} from './interfaces/IPoolMaster.sol';
import {CallbackParams} from './interfaces/IBondNFT.sol';
import {NFTDescriptor} from './libraries/NFTDescriptor.sol';

/**
 * @title A smart contract for minting tokens ERC1155 standard;
 * @notice Smart contract to minting tokens for `lenders` in the `PoolMaster`;
 */
contract BondNFT is Initializable, ERC1155Upgradeable {
  /**
   *  All Errors:
   */
  error WrongMinter();

  /**
   * All variables:
   *  {minter} - address of the minter;
   */
  address public minter;

  mapping(uint256 => CallbackParams) public tokenData;

  /**
   * @dev Modifier that allows only `minter`;
   */
  modifier onlyMinter() {
    if (msg.sender != minter) revert WrongMinter();
    _;
  }

  modifier onlyEligible(address _recipient) {
    if (_recipient != address(0)) {
      IPoolMaster(minter).checkKycStatus(_recipient);
    }
    _;
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @dev Initializing all importing contracts and variables;
   *  {_minter} - address of the minter;
   *  {_uri} - information about token;
   */
  function __init(address _minter, string memory _uri) public virtual initializer returns (bool) {
    if (_minter == address(0)) revert WrongMinter();
    minter = _minter;
    __ERC1155_init(_uri);
    return true;
  }

  /**
   * @dev Mint a new ERC1155 token and assign it to the specified address;
   *  {_account} - address to receive the minted tokens;
   *  {_id} - ID of the token to mint;
   *  {_amount} - amount of tokens to mint.
   *  {_data} - data to pass to the recipient if desired.
   */
  function mint(
    address _account,
    uint256 _id,
    uint256 _amount,
    bytes memory _data,
    CallbackParams calldata params
  ) external onlyMinter {
    tokenData[_id] = params;
    _mint(_account, _id, _amount, _data);
  }

  /**
   * @dev Updates the exchange rate value for a specific bond;
   *  {_id} - ID of the token to mint;
   *  {_exchangeRate} - the exchange rate for redeeming the bond.
   */
  function setExchangeRate(uint256 _id, uint256 _exchangeRate) external onlyMinter {
    tokenData[_id].exchangeRate = _exchangeRate;
  }

  /**
   * @dev Burn a specified amount of an ERC1155 token;
   *  {_account} The address that holds the tokens to be burned;
   *  {_id} The ID of the token to burn;
   *  {_amount} The amount of tokens to burn;
   */
  function burn(address _account, uint256 _id, uint256 _amount) external onlyMinter {
    _burn(_account, _id, _amount);
  }

  function uri(uint256 id) public view virtual override returns (string memory) {
    CallbackParams storage params = tokenData[id];
    return
      NFTDescriptor.constructURI(
        NFTDescriptor.ConstructorParams({
          pool: minter,
          token: address(this),
          symbol: IPoolMaster(minter).symbol(),
          decimals: IPoolMaster(minter).decimals(),
          id: id,
          interestRate: params.interestRate,
          penaltyRate: params.penaltyRate,
          endDate: params.endDate
        })
      );
  }

  function _beforeTokenTransfer(
    address operator,
    address from,
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) internal override onlyEligible(to) {
    super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
  }

  /**
   * @dev See {IERC1155-safeTransferFrom}.
   */
  function safeTransferFrom(
    address from,
    address to,
    uint256 id,
    uint256 amount,
    bytes memory data
  ) public virtual override {
    IPoolMaster(minter).applyBondRewardCorections(tokenData[id].endDate, id, from, to, amount);
    super.safeTransferFrom(from, to, id, amount, data);
  }

  /**
   * @dev See {IERC1155-safeBatchTransferFrom}.
   */
  function safeBatchTransferFrom(
    address from,
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) public virtual override {
    for (uint256 i; i < ids.length; i++) {
      IPoolMaster(minter).applyBondRewardCorections(
        tokenData[ids[i]].endDate,
        ids[i],
        from,
        to,
        amounts[i]
      );
    }

    super.safeBatchTransferFrom(from, to, ids, amounts, data);
  }
}
