// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "../interfaces/IOnDemandOracle.sol";


/// @notice Saving pool where a synthetic asset can be deposited to earn a share of LSD yield.
/// @notice Implements a ducth auction and streams fees to users to prevent sniping
contract SavingsPool is ERC4626  {
  using SafeERC20 for ERC20;

  event BoughtAuctionedAsset(address indexed buyer, address indexed auctionedAsset, uint boughtAmount, address paidAsset, uint paidAmount);

  /// @notice Period over which fees are streamed (1d)
  uint internal constant STREAMING_PERIOD = 86400;
  /// @notice Fees accumated at a given period
  mapping(uint => uint) internal periodToFees;
  /// @notice Auction start date of an asset
  mapping(address => uint) internal auctionStartDates;
  /// @notice Oracles mapping for asset auction
  mapping(address => IOnDemandOracle) public assetOracles;


  constructor(address underlying, string memory name_, string memory symbol_) 
    ERC4626(IERC20(underlying))
    ERC20(name_, symbol_)
  {}
  
  
  /// @notice Add a new oracle feed matching an existing vault
  function addOracle(address _asset, address oracle) public {
    require(msg.sender == asset(), "SSP: Unauthorized Call");
    assetOracles[_asset] = IOnDemandOracle(oracle);
  }

  
  /// @notice Returns the underlying assets
  function totalAssets() public view override returns (uint256){
    return ERC20(asset()).balanceOf(address(this)) - pendingFees();
  }
  

  /// @notice Auction earned assets for synth underlying to avoid expensive swaps
  /// @dev Protected to prevent griefing (offering rewards to reset auction)
  function startAuction(address rewardAsset) public {
    require(msg.sender == asset(), "SSP: Caller Not Synth");
    // asset is already transfered by the synth contract who has the allowance
    auctionStartDates[rewardAsset] = block.timestamp;
  }
  
  
  /// @notice Get Dutch auction price discount in percent
  /// @dev 1% every 30mn from auction start, max 50% discount
  function getDutchAuctionPriceDiscount(address _asset) public view returns (uint discount){
    if (auctionStartDates[_asset] > 0) discount = (block.timestamp - auctionStartDates[_asset]) / 1800;
    if (discount > 50) discount = 50;
  }
  
  receive() external payable { revert(); }
  fallback() external payable { revert(); }
  
  /// @notice Buy auctioned off assets at current oracle price minus dutch auction discount
  function buyAssets(address auctionedAsset, uint boughtAmount, uint maxPaidAmount, bytes calldata priceUpdateData) 
    external payable returns (uint paidAmount) 
  {
    // Update oracle if needed
    IOnDemandOracle oracle = assetOracles[auctionedAsset];
    uint price = uint(oracle.updateAnswer{value: msg.value}(priceUpdateData));
    uint discount = getDutchAuctionPriceDiscount(auctionedAsset);
    paidAmount = boughtAmount * 1e18 * price * (100 - discount ) / 100e8 / 10**ERC20(auctionedAsset).decimals();
    require(paidAmount <= maxPaidAmount, "SSP: Excessive Cost");
    if (paidAmount > 0){
      ERC20(asset()).safeTransferFrom(msg.sender, address(this), paidAmount);
      reserveFees(paidAmount);
      ERC20(auctionedAsset).transfer(msg.sender, boughtAmount);
      emit BoughtAuctionedAsset(msg.sender, auctionedAsset, boughtAmount, asset(), paidAmount);
    }
  }
  
  
  /// @notice Add fees to the current period
  function reserveFees(uint amount) internal {
    uint period = block.timestamp / STREAMING_PERIOD;
    if(amount > 0) periodToFees[period] += amount;
  }
  
  /// @notice Returns amount of fees reserved, pending streaming
  function pendingFees() public view returns (uint _pendingFees) {
    // time elapsed in past period:
    uint currentPeriod = block.timestamp / STREAMING_PERIOD;
    uint remainingTime = STREAMING_PERIOD - block.timestamp % STREAMING_PERIOD;
    _pendingFees = periodToFees[currentPeriod] + periodToFees[currentPeriod-1] * remainingTime / STREAMING_PERIOD;
  }
}