// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

/// Utils /////
import {ERC20Upgradeable} from
  "openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import {Ownable} from "src/utils/Ownable.sol";

contract YieldToken is ERC20Upgradeable, Ownable {
  /*//////////////////////////////////////////////////////////////
                              STORAGE
  //////////////////////////////////////////////////////////////*/

  ///@notice Yield Manager can mint and burn
  address public yieldManager;

  ///@notice Fyde contract
  address private immutable FYDE;

  ///@notice Relayer contract
  address public relayer;

  ///@notice Address of the yield token
  IYieldToken public immutable BASEYIELDTOKEN;

  uint8 private _decimals;

  /*//////////////////////////////////////////////////////////////
                              STORAGE
  //////////////////////////////////////////////////////////////*/

  error NonWithdrawableYieldToken();

  /*//////////////////////////////////////////////////////////////
                           INITIALIZATION
  //////////////////////////////////////////////////////////////*/

  ///@notice Constructor of the yieldToken template
  ///@param _yieldManager Yield Manager
  constructor(address _yieldManager, address _fyde, address _relayer, address _owner)
    Ownable(_owner)
  {
    yieldManager = _yieldManager;
    FYDE = _fyde;
    relayer = _relayer;
    BASEYIELDTOKEN = IYieldToken(address(this));
  }

  function decimals() public view virtual override returns (uint8) {
    return _decimals;
  }

  ///@notice Initializer for state variables that are different for each clone
  ///@param  _name Name of the yield token
  ///@param  _symbol Symbol of the yield token
  function initialize(string memory _name, string memory _symbol, uint8 _dec) public initializer {
    __ERC20_init(_name, _symbol);
    _decimals = _dec;
  }

  /*//////////////////////////////////////////////////////////////
                         AUTHORIZED EXTERNAL
    //////////////////////////////////////////////////////////////*/

  ///@notice Getter for yieldManager address
  function getYieldManager() public view returns (address) {
    return BASEYIELDTOKEN.yieldManager();
  }

  ///@notice Setter for yieldManager address
  function setYieldManager(address _yieldManager) public onlyOwner {
    yieldManager = _yieldManager;
  }

  ///@notice Getter for fyde address
  function getFyde() public view returns (address) {
    return FYDE;
  }

  ///@notice Getter for relayer address
  function getRelayer() public view returns (address) {
    return BASEYIELDTOKEN.relayer();
  }

  ///@notice Setter for relayer address
  function setRelayer(address _relayer) public onlyOwner {
    relayer = _relayer;
  }

  ///@notice Mint yield token to yield manager
  ///@param _amount Amount to be minted
  function mint(uint256 _amount) external onlyYieldManager {
    _mint(getYieldManager(), _amount);
  }

  ///@notice Burn yield token from yield manager
  ///@param _amount Amount to be burned
  function burn(uint256 _amount) external onlyYieldManager {
    _burn(getYieldManager(), _amount);
  }

  function _beforeTokenTransfer(address _from, address _to, uint256) internal view override {
    if (
      _from != address(0x0) && _to != address(0x0) && _to != getRelayer() && _to != getFyde()
        && _to != getYieldManager()
    ) revert NonWithdrawableYieldToken();
  }

  /*//////////////////////////////////////////////////////////////
                              MODIFIERS
    //////////////////////////////////////////////////////////////*/

  modifier onlyYieldManager() {
    if (msg.sender != getYieldManager()) revert Unauthorized();
    _;
  }
}

interface IYieldToken {
  ///@notice Getter for relayer address
  function relayer() external view returns (address);

  ///@notice Getter for yieldManager address
  function yieldManager() external view returns (address);
}
