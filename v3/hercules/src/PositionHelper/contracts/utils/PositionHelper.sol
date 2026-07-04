// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface ICamelotRouter {
  function getPair(address token1, address token2) external view returns (address);
  function addLiquidity(
    address tokenA,
    address tokenB,
    uint amountADesired,
    uint amountBDesired,
    uint amountAMin,
    uint amountBMin,
    address to,
    uint deadline
  ) external returns (uint amountA, uint amountB, uint liquidity);

  function addLiquidityETH(
    address token,
    uint amountTokenDesired,
    uint amountTokenMin,
    uint amountETHMin,
    address to,
    uint deadline
  ) external payable returns (uint amountToken, uint amountETH, uint liquidity);
}

interface INFTPool is IERC721 {
  function getPoolInfo() external view returns (
    address lpToken, address grailToken, address sbtToken, uint256 lastRewardTime, uint256 accRewardsPerShare,
    uint256 lpSupply, uint256 lpSupplyWithMultiplier, uint256 allocPoint
  );

  function getStakingPosition(uint256 tokenId) external view returns (
    uint256 amount, uint256 amountWithMultiplier, uint256 startLockTime,
    uint256 lockDuration, uint256 lockMultiplier, uint256 rewardDebt,
    uint256 boostPoints, uint256 totalMultiplier
  );

  function lastTokenId() external view returns (uint256);

  function createPosition(uint256 amount, uint256 lockDuration) external;
}

contract PositionHelper is ReentrancyGuard {
  using Address for address;
  using SafeERC20 for IERC20;
  using SafeMath for uint256;

  bytes4 private constant _ERC721_RECEIVED = 0x150b7a02;
  ICamelotRouter public immutable router;
  address public immutable weth;

  uint256 expectedTokenId;
  address expectedNftPool;

  constructor(ICamelotRouter router_, address weth_){
    router = router_;
    weth = weth_;
  }

  receive() external payable {
    assert(msg.sender == weth); // only accept ETH via fallback from the WETH contract
  }

  function onERC721Received(address /*operator*/, address from, uint256 tokenId, bytes calldata /*data*/) external view returns (bytes4){
    require(tokenId == expectedTokenId && msg.sender == expectedNftPool && from == address(0), "Invalid tokenId");
    return _ERC721_RECEIVED;
  }

  function addLiquidityAndCreatePosition(
    address tokenA, address tokenB, uint256 amountADesired, uint256 amountBDesired,
    uint256 amountAMin, uint256 amountBMin, uint256 deadline, address to, INFTPool nftPool, uint256 lockDuration
  ) external nonReentrant {
    address lp = router.getPair(tokenA, tokenB);

    {
      (address nftUnderlyingAsset,,,,,,,) = nftPool.getPoolInfo();
      require(lp == nftUnderlyingAsset, "invalid nftPool");
    }

    bytes memory data = address(router).functionDelegateCall(
      abi.encodeWithSelector(
        router.addLiquidity.selector,
        tokenA, tokenB, amountADesired, amountBDesired, amountAMin, amountBMin, address(this), deadline
      )
    );
    (,, uint256 lpAmount) = abi.decode(data, (uint256, uint256, uint256));

    expectedTokenId = nftPool.lastTokenId().add(1);
    expectedNftPool = address(nftPool);

    IERC20(lp).safeApprove(expectedNftPool, lpAmount);
    nftPool.createPosition(lpAmount, lockDuration);

    (uint256 lpAmount_,,,uint256 lockDuration_,,,,) = nftPool.getStakingPosition(expectedTokenId);
    require(lpAmount == lpAmount_ && lockDuration == lockDuration_, "invalid position created");
    nftPool.safeTransferFrom(address(this), to, expectedTokenId);

    expectedTokenId = 0;
    expectedNftPool = address(0);
  }


  function addLiquidityETHAndCreatePosition(
    address token, uint amountTokenDesired, uint amountTokenMin, uint amountETHMin, uint256 deadline,
    address to, INFTPool nftPool, uint256 lockDuration
  ) external payable nonReentrant {
    address lp = router.getPair(token, weth);

    (address nftUnderlyingAsset,,,,,,,) = nftPool.getPoolInfo();
    require(lp == nftUnderlyingAsset, "invalid nftPool");

    bytes memory data = address(router).functionDelegateCall(
      abi.encodeWithSelector(
        router.addLiquidityETH.selector,
        token, amountTokenDesired, amountTokenMin, amountETHMin, address(this), deadline
      )
    );
    (,, uint256 lpAmount) = abi.decode(data, (uint256, uint256, uint256));

    expectedTokenId = nftPool.lastTokenId().add(1);
    expectedNftPool = address(nftPool);

    IERC20(lp).safeApprove(expectedNftPool, lpAmount);
    nftPool.createPosition(lpAmount, lockDuration);

    (uint256 lpAmount_,,,uint256 lockDuration_,,,,) = nftPool.getStakingPosition(expectedTokenId);
    require(lpAmount == lpAmount_ && lockDuration == lockDuration_, "invalid position created");
    nftPool.safeTransferFrom(address(this), to, expectedTokenId);

    expectedTokenId = 0;
    expectedNftPool = address(0);
  }
}