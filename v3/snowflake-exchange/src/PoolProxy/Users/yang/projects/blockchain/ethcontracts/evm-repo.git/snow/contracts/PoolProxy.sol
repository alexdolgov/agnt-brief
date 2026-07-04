pragma solidity ^0.8.0;
import "./WETHelper.sol";
import "../../lib0.8/upgrable/Ownable.sol";


interface IWETH {
    function deposit() external payable;
    function transfer(address to, uint value) external returns (bool);
    function withdraw(uint) external;
}

interface IPool {
  function assetOf (address token) external view returns (address);

  function deposit(
    address token,
    uint256 amount,
    address to,
    uint256 deadline
  ) external returns (uint256 liquidity);

  function swap(
    address fromToken,
    address toToken,
    uint256 fromAmount,
    uint256 minimumToAmount,
    address to, 
    uint256 deadline
  ) external returns (uint256);

  function withdraw(
    address token,
    uint256 liquidity,
    uint256 minimumAmount,
    address to,
    uint256 deadline
  ) external returns (uint256 amount);
}

interface IFarm {
  function depositFor(uint256, uint256, address) external;
}

interface IERC20 {
  function approve(address, uint256) external;
  function transfer(address, uint256) external;
  function transferFrom(address, address, uint256) external;
}

contract PoolProxy is Ownable {

  IPool public pool;
  IFarm public farm;
  address public WETH;
  WETHelper public wethelper = new WETHelper();

  function initialize(IFarm farm_, address weth_, IPool pool_) public initializer {
      Ownable.__Ownable_init();
      farm = farm_;
      WETH = weth_;
      pool = pool_;
  }

  receive() external payable {
    assert(msg.sender == WETH);
  }

  function deposit(address token, uint256 amount, address to, uint256 deadline, IPool pool_) 
    public payable returns (uint256 liquidity) {
      if(amount > 0) {
        IERC20(token).transferFrom(msg.sender, address(this), amount);
      }
      if(token == WETH) {
        IWETH(WETH).deposit{value: msg.value}();
        amount += msg.value;
      }
      IERC20(token).approve(address(pool_), amount);
      liquidity = pool_.deposit(token, amount, to, deadline);
  }

  function depositAndStake( 
    address token,
    uint256 amount,
    address to,
    uint256 pid,
    uint256 deadline,
    IPool pool_
  ) external payable returns (uint256 liquidity){
    liquidity = deposit(token, amount, address(this), deadline, pool_);
    address asset = pool_.assetOf(token);
    IERC20(asset).approve(address(farm), liquidity);
    farm.depositFor(pid, liquidity, to);
  }

  function stake (
    address token,
    uint256 pid,
    uint256 amount,
    IPool pool_
  ) external {
    address asset = pool_.assetOf(token);
    IERC20(asset).transferFrom(msg.sender, address(this), amount);
    IERC20(asset).approve(address(farm), amount);
    farm.depositFor(pid, amount, msg.sender);
  }

  function swap(
      address fromToken,
      address toToken,
      uint256 fromAmount,
      uint256 minimumToAmount,
      address to,
      uint256 deadline,
      IPool pool_
  ) external {
      IERC20(fromToken).transferFrom(msg.sender, address(this), fromAmount);
      IERC20(fromToken).approve(address(pool_), fromAmount);
      pool_.swap(fromToken, toToken, fromAmount, minimumToAmount, to, deadline);
  }

  function withdrawEth(address _to, uint256 _amount, bool _isWeth) internal {
    if (_isWeth) {
      IERC20(WETH).transfer(_to, _amount);
    } else {
      IERC20(WETH).transfer(address(wethelper), _amount);
      wethelper.withdraw(WETH, _to, _amount);
    }
  }

  function swapToETH(
      address fromToken,
      uint256 fromAmount,
      uint256 minimumToAmount,
      address to,
      uint256 deadline,
      IPool pool_
  ) external returns(uint256 liquidity) {
      IERC20(fromToken).transferFrom(msg.sender, address(this), fromAmount);
      IERC20(fromToken).approve(address(pool_), fromAmount);
      liquidity = pool_.swap(fromToken, WETH, fromAmount, minimumToAmount, address(this), deadline);
      withdrawEth(to, liquidity, false);
  }
  
  function swapFromETH(
      address toToken,
      uint256 amount,
      uint256 minimumToAmount,
      address to,
      uint256 deadline,
      IPool pool_
  ) payable external {
      if(amount > 0) {
        IERC20(WETH).transferFrom(msg.sender, address(this), amount);
      }
      amount += msg.value;
      IWETH(WETH).deposit{value: msg.value}();
      IERC20(WETH).approve(address(pool_), amount);
      pool_.swap(WETH, toToken, amount, minimumToAmount, to, deadline);
  }

  function withdraw(
      address token,
      uint256 liquidity,
      uint256 minimumAmount,
      address to,
      uint256 deadline,
      IPool pool_
  ) external {
      address asset = pool_.assetOf(token);
      IERC20(asset).transferFrom(msg.sender, address(this), liquidity);
      IERC20(asset).approve(address(pool_), liquidity);
      pool_.withdraw(token, liquidity, minimumAmount, to, deadline);
  }

  function withdrawETH(
      address token,
      uint256 liquidity,
      uint256 minimumAmount,
      address to,
      uint256 deadline,
      IPool pool_
  ) external {
      address asset = pool_.assetOf(token);
      IERC20(asset).transferFrom(msg.sender, address(this), liquidity);
      IERC20(asset).approve(address(pool_), liquidity);
      uint256 actualToAmount = pool_.withdraw(token, liquidity, minimumAmount, address(this), deadline);
      withdrawEth(to, actualToAmount, false);
  }

}