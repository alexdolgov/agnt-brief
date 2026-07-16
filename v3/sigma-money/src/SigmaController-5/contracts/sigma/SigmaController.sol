// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import "../interfaces/sigma/ISlisBNBProvider.sol";
import "../interfaces/IPoolManager.sol";
import "../interfaces/IPool.sol";
import "../scy/ISuperComposableYield.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract SigmaController is Ownable {
  IERC20 public slisBNB; // Address of the SLIS BNB token
  ISuperComposableYield public sy; // Address of the FLIS BNB token
  ISlisBNBProvider public slisBNBProvider; // Address of the Lista DAO CDP contract
  IPoolManager public fxPoolManager; // Address of the FX Pool Manager
  address public listaLpDelegateTo; // Address to delegate to for Lista LP

  mapping(address => uint256) public deposits; // Mapping to track deposits

  constructor(
    IERC20 _slisBNB,
    ISuperComposableYield _sy,
    ISlisBNBProvider _slisBNBProvider,
    IPoolManager _fxPoolManager,
    address _listaLpDelegateTo
  ) Ownable(msg.sender) {
    // Set the addresses for the contracts
    // These should be set to the actual deployed addresses of the respective contracts
    slisBNB = _slisBNB;
    sy = _sy;
    slisBNBProvider = _slisBNBProvider;
    fxPoolManager = _fxPoolManager;
    listaLpDelegateTo = _listaLpDelegateTo;
  }

  function deposit(address _pool, uint256 amount, uint256 positionId, int256 newColl, int256 newDebt) external {
    require(amount > 0, "Amount must be greater than 0");
    require(newColl > 0, "New collateral must be greater than 0");
    require(newDebt > 0, "New debt must be greater than 0");

    // transfer
    IERC20(slisBNB).transferFrom(msg.sender, address(this), amount);
    deposits[msg.sender] += amount;

    // stake to slisBNBProvider
    slisBNB.approve(address(slisBNBProvider), amount);
    slisBNBProvider.provide(amount, listaLpDelegateTo);

    // mint SigmaClisBNBSY
    sy.deposit(address(this), address(slisBNB), amount, 0);

    // deposit sy to fx pool
    uint256 positionId = fxPoolManager.operate(_pool, positionId, newColl, newDebt);

    // transfer fxUSD to the user
    uint256 fxUSDOut = IERC20(IPool(_pool).fxUSD()).balanceOf(address(this));
    IERC20(IPool(_pool).fxUSD()).approve(address(this), fxUSDOut);
    IERC20(IPool(_pool).fxUSD()).transfer(msg.sender, fxUSDOut);

    // transfer xBNB to the user
    IERC721(_pool).transferFrom(address(this), msg.sender, positionId);
  }

  function redeem(address _pool, uint256 amount, uint256 positionId, int256 newColl, int256 newDebt) external {
    // check if the user has enough deposits
    require(deposits[msg.sender] >= amount, "Insufficient deposits");
    require(newColl < 0, "New collateral must be less than 0");
    require(newDebt < 0, "New debt must be less than 0");

    // transfer fxUSD to this contract
    IERC20(IPool(_pool).fxUSD()).transferFrom(msg.sender, address(this), uint256(-newDebt));
    IERC20(IPool(_pool).fxUSD()).approve(address(fxPoolManager), uint256(-newDebt));
    // transfer xBNB to this contract
    IERC721(_pool).transferFrom(msg.sender, address(this), positionId);
    IERC721(_pool).approve(address(fxPoolManager), positionId);

    // withdraw sy from fx pool
    fxPoolManager.operate(_pool, positionId, newColl, newDebt);

    // burn sy, get slisBNB
    sy.redeem(address(this), amount, _pool, 0);

    // transfer slisBNB to user and update deposits
    slisBNB.transfer(msg.sender, amount);
    deposits[msg.sender] -= amount;
  }
}
