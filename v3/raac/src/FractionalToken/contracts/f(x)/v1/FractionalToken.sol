// SPDX-License-Identifier: MIT

pragma solidity ^0.7.6;

import { SafeMathUpgradeable } from "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

import { IFxFractionalToken } from "../../interfaces/f(x)/IFxFractionalToken.sol";
import { IFxTreasury } from "../../interfaces/f(x)/IFxTreasury.sol";

contract FractionalToken is ERC20Upgradeable, IFxFractionalToken {
  using SafeMathUpgradeable for uint256;

  /**********
   * Events *
   **********/

  /// @notice Emitted when the net asset value for the token is updated.
  /// @param oldNav The net asset value before update.
  /// @param newNav The net asset value after update.
  event UpdateNav(uint256 oldNav, uint256 newNav);

  /*************
   * Constants *
   *************/

  /// @dev The precision used to compute nav.
  uint256 private constant PRECISION = 1e18;

  /*************
   * Variables *
   *************/

  /// @notice The address of Treasury contract.
  address public treasury;

  /// @inheritdoc IFxFractionalToken
  uint256 public override nav;

  /*************
   * Modifiers *
   *************/

  modifier onlyTreasury() {
    require(msg.sender == treasury, "Only treasury");
    _;
  }

  /***************
   * Constructor *
   ***************/

  function initialize(
    address _treasury,
    string memory _name,
    string memory _symbol
  ) external initializer {
    ERC20Upgradeable.__ERC20_init(_name, _symbol);

    treasury = _treasury;
    nav = PRECISION;
  }

  /*************************
   * Public View Functions *
   *************************/

  /// @inheritdoc IFxFractionalToken
  /// @dev Normally `multiple/1e18` should be in the range `(-1, 1e18)`.
  /// @dev This function provides the actual value in case of collateralized and under collateralized.
  /// @dev In case of under collateralized, it returns the ceil(baseValue / fSupply). In case of collateralized, it returns the candidate nav.
  function getNav(int256 multiple) public view override returns (uint256) {
    uint256 _candidateNav = getCandidateNav(multiple);
    uint256 _fSupply = totalSupply();

    if (_fSupply > 0) {
      uint256 baseNav = IFxTreasury(treasury).currentBaseTokenPrice();
      uint256 baseSupply = IFxTreasury(treasury).totalBaseToken();

      uint256 baseValue = baseSupply.mul(baseNav);
      uint256 fValue = _fSupply.mul(_candidateNav);

      if (baseValue < fValue) {
        // Under-collateral: ceil(baseValue / fSupply) so Treasury detects xNAV == 0
        return baseValue.add(_fSupply).sub(1).div(_fSupply);
      }
    }

    return _candidateNav;
  }

  /// @inheritdoc IFxFractionalToken
  /// @dev Remains 1e18 if multiple is 0. In stablecoin, beta = 0 -> multiple = 0 -> fNav = 1e18
  function getCandidateNav(int256 multiple) public view override returns (uint256) {
    if (multiple < 0) {
      require(uint256(-multiple) < PRECISION, "multiple too small");
    } else {
      require(uint256(multiple) < PRECISION * PRECISION, "multiple too large");
    }

    return nav.mul(uint256(int256(PRECISION) + multiple)).div(PRECISION);
  }

  /****************************
   * Public Mutated Functions *
   ****************************/

  /// @inheritdoc IFxFractionalToken
  /// @dev Normally `multiple/1e18` should be in the range `(-1, 1e18)`.
  function updateNav(int256 multiple) external override onlyTreasury returns (uint256) {
    uint256 _oldNav = nav;
    uint256 _newNav = getCandidateNav(multiple);
    nav = _newNav;

    emit UpdateNav(_oldNav, _newNav);

    return _newNav;
  }

  /// @inheritdoc IFxFractionalToken
  function setNav(uint256 _newNav) external override onlyTreasury {
    uint256 _oldNav = nav;
    nav = _newNav;

    emit UpdateNav(_oldNav, _newNav);
  }

  /// @inheritdoc IFxFractionalToken
  function mint(address _to, uint256 _amount) external override onlyTreasury {
    _mint(_to, _amount);
  }

  /// @inheritdoc IFxFractionalToken
  function burn(address _from, uint256 _amount) external override onlyTreasury {
    _burn(_from, _amount);
  }
}
