// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;
import "./IERC20.sol";
import {IPassiveRebal} from "./IPassiveRebal.sol";
import {OwnableDelayModule} from "./OwnableDelayModule.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";

interface IAggregationExecutor {
  function callBytes(bytes calldata data) external payable;
}

interface IAerodromePool {
  function stable() external view returns (bool);
}

/**
 * @title IbundlerContract
 * @notice Interface for the bundlerContract contract
 */
interface IbundlerContract {
  function validateAndConstructPendleCallData(
    address tokenIn,
    uint256 amountIn,
    address tokenOut,
    bool isRemoval,
    address vault,
    bytes calldata apiCallData
  ) external view returns (bytes memory callData, uint256 minExpectedAmount);
}

interface IAFiBase {
  function invoke(
    address target,
    uint256 value,
    bytes calldata data
  ) external returns (bytes memory);
}

interface IAggregationRouterV6 {
  struct SwapDescription {
    IERC20 srcToken;
    IERC20 dstToken;
    address srcReceiver;
    address dstReceiver;
    uint256 amount;
    uint256 minReturnAmount;
    uint256 flags;
  }
}

/// @notice Aerodrome Router interface with `Route` struct
interface IAerodromeRouter {
    struct Route {
      address from;
      address to;
      bool stable;
      address factory;
    }

    function swapExactTokensForTokens(
      uint256 amountIn,
      uint256 amountOutMin,
      Route[] calldata routes,
      address to,
      uint256 deadline
    ) external returns (uint256[] memory amounts);

    function getAmountsOut(
      uint256 amountIn,
      Route[] calldata routes
    ) external view returns (uint256[] memory amounts);
}

/// @notice Swaps ERC‑20 tokens via Aerodrome's router on BaseChain
contract AtvAdapter is OwnableDelayModule, ReentrancyGuard {
  IAerodromeRouter public immutable aerodromeRouter;
  address public immutable poolFactory; // needed in route struct
  address public constant ONEINCH_ROUTER = 0x111111125421cA6dc452d289314280a0f8842A65;
  address private constant WETH = 0x4200000000000000000000000000000000000006;
  address private constant PENDLE_ROUTER = 0x888888888889758F76e7103c6CbF23ABbF58F946;
  address public bundlerContract;
  address public atvStorage;
  address public aFiManager;

  mapping(address => bool) internal onlyOnce;

  IPassiveRebal public rebalContract;
  mapping(address => bool) public allowedAtvContracts;
  mapping(address => address) internal atvContractController;
  mapping(address => bool) internal isActiveRebalanced;

  /**
   * @notice Struct representing TeamWallet details.
   * @param isPresent Boolean indicating whether a wallet exists.
   * @param isActive Boolean indicating whether a wallet is active.
   * @param walletAddress Wallet address.
   */
  struct TeamWallet {
    bool isPresent;
    bool isActive;
    address walletAddress;
  }

  // List of TeamWallets, helpful when fetching team wallets report
  mapping(address => address[]) internal teamWalletsOfAFi;
  mapping(address => mapping(address => TeamWallet)) internal teamWalletInAFi;
  mapping(address => uint) internal totalActiveTeamWallets;

  mapping(address => bool) public isAFiActive;


  event AtvContractAllowed(address indexed atvContract, bool allowed);
  event SetActiveRebalancedStatus(address indexed aFiContract, bool status);
  event SetAFiActive(address indexed aFiContract, bool status);
  event ReActivateTeamWallet(address aFiContract, address wallet);
  event DeactivateTeamWallet(address aFiContract, address wallet);
  event TeamWalletAdd(address indexed aFiContract, address indexed wallet, bool status);

  enum DexChoice {
    AERODROME,
    ONEINCH,
    NONE
  }

  /// @param _router Address of Aerodrome router
  /// @param _factory Address of the pool factory used in routes
  constructor(address _router, address _factory, address _rebalContract) {
    aerodromeRouter = IAerodromeRouter(_router);
    poolFactory = _factory;
    rebalContract = IPassiveRebal(_rebalContract);
  }

  /// @notice Swap tokens using Aerodrome router and `Route[]`
  function swapTokensAerodrome(
    address base,
    address tokenIn,
    address tokenOut,
    uint256 amountIn,
    uint256 deadline,
    address middleToken,
    uint256 amountOutMin
  ) internal returns (uint256 amount) {
    // Pull tokens in from sender
    require(IERC20(tokenIn).transferFrom(base, address(this), amountIn), "TransferFrom failed");
    // Approve router to use them
    require(IERC20(tokenIn).approve(address(aerodromeRouter), amountIn), "Approve failed");
    uint256[] memory amounts = new uint256[](2);
    bool stable;
    if (
      tokenIn == WETH ||
      tokenOut == WETH ||
      tokenIn == middleToken ||
      tokenOut == middleToken ||
      rebalContract.directPool(tokenIn, tokenOut) != address(0)
    ) {
      IAerodromeRouter.Route[] memory singleRoutes = new IAerodromeRouter.Route[](1);
      if(rebalContract.directPool(tokenIn, tokenOut) != address(0)){
        stable = IAerodromePool(rebalContract.directPool(tokenIn, tokenOut)).stable();
      }else {
        stable = IAerodromePool(rebalContract.getPool(tokenIn, tokenOut)).stable();
      }
      singleRoutes[0] = IAerodromeRouter.Route({
        from: tokenIn,
        to: tokenOut,
        stable: stable,
        factory: poolFactory
      });
      
      amounts = aerodromeRouter.swapExactTokensForTokens(
        amountIn,
        amountOutMin,
        singleRoutes,
        base,
        deadline
      ); 
      require(amounts[amounts.length - 1] >= amountOutMin, "Not eneough amount received");
      return amounts[amounts.length - 1];   
    } else {
      IAerodromeRouter.Route[] memory multiRoutes = new IAerodromeRouter.Route[](2);
     
      stable = IAerodromePool(rebalContract.getPool(tokenIn, middleToken)).stable();
      multiRoutes[0] = IAerodromeRouter.Route({
        from: tokenIn,
        to: middleToken,
        stable: stable,
        factory: poolFactory
      });
    
      stable = IAerodromePool(rebalContract.getPool(middleToken, tokenOut)).stable();
      multiRoutes[1] = IAerodromeRouter.Route({
        from: middleToken,
        to: tokenOut,
        stable: stable,
        factory: poolFactory
      });
      amounts = aerodromeRouter.swapExactTokensForTokens(
        amountIn,
        amountOutMin,
        multiRoutes,
        base,
        deadline
      );  
      require(amounts[amounts.length - 1] >= amountOutMin, "Not eneough amount received");
      return amounts[amounts.length - 1];
    }
  }

  function _oneInchRouter(
    address base,
    address srcToken,
    address dstToken, // Add destination token parameter
    uint256 srcAmount,
    uint256 minReturnAmount, // Add minimum return amount parameter
    bytes calldata swapdata
  ) internal returns (uint256 amountOut) {
    require(swapdata.length >= 4);

    bytes calldata dataToValidate = swapdata[4:];
    (, IAggregationRouterV6.SwapDescription memory desc, ) = abi.decode(
    dataToValidate,
    (address, IAggregationRouterV6.SwapDescription, bytes)
    );

    require(address(desc.srcToken) == srcToken);
    require(address(desc.dstToken) == dstToken);
    require(address(desc.dstReceiver) == msg.sender);

    if (srcAmount != desc.amount) {
      desc.minReturnAmount = (desc.minReturnAmount * ((srcAmount * 1e18) / desc.amount)) / 1e18;
      desc.amount = srcAmount;
    } 

    uint256 destBal = IERC20(dstToken).balanceOf(msg.sender);

    // Execute the swap through the oneInch router
    IAFiBase(base).invoke(ONEINCH_ROUTER, 0, swapdata);

    destBal = IERC20(dstToken).balanceOf(msg.sender) - destBal;
    require((destBal) >=  minReturnAmount);
    return (destBal);
  }

  function swap(
    address base,
    address tokenIn,
    address tokenOut,
    uint256 amountIn,
    uint256 deadline,
    address middleToken,
    uint256 minimumReturnAmount,
    bytes calldata oneInchSwapData
  ) external returns (uint256 amountOut) {
    require(allowedAtvContracts[base], "Not an allowed AtvBase contract");
    require(msg.sender == base, "Caller must be AFiBase");
    IPassiveRebal.DexChoice rebalDex = rebalContract.getDexType(tokenIn, tokenOut);
    DexChoice dex = DexChoice(uint8(rebalDex));
    if (dex == DexChoice.AERODROME || oneInchSwapData.length == 0) {
      amountOut = swapTokensAerodrome(
        base,
        tokenIn,
        tokenOut,
        amountIn,
        deadline,
        middleToken,
        minimumReturnAmount
      );
    } else if (dex == DexChoice.ONEINCH) {
      amountOut = _oneInchRouter(
        base,
        tokenIn,
        tokenOut,
        amountIn,
        minimumReturnAmount,
        oneInchSwapData
      );
    }
    require(amountOut >= minimumReturnAmount, "Insufficient output amount");
    return amountOut;
  }
  
  function getDexChoice(
    address tokenIn,
    address tokenOut,
    bytes calldata oneInchSwapData
  ) public view returns (address) {
    IPassiveRebal.DexChoice rebalDex = rebalContract.getDexType(tokenIn, tokenOut);
    return (uint8(rebalDex) == uint8(DexChoice.AERODROME) || oneInchSwapData.length == 0)
      ? address(this)  
      : ONEINCH_ROUTER;
  }

  function getDexType(
    address tokenIn,
    address tokenOut
  ) external view returns (DexChoice) {
    IPassiveRebal.DexChoice rebalDex = rebalContract.getDexType(tokenIn, tokenOut);
    return DexChoice(uint8(rebalDex));
  }

  function executeRouterCall(
    address base,
    address tokenIn,
    uint256 amountIn,
    address tokenOut,
    bool isRemoval,
    bytes calldata apiCallData
  ) external payable returns (uint256 actualAmount) {
    require(allowedAtvContracts[msg.sender], "Not an allowed AtvBase contract");
    //Get validated callData and minimum expected amount
    (bytes memory callData, uint256 minExpectedAmount) = IbundlerContract(bundlerContract).validateAndConstructPendleCallData(
      tokenIn,
      amountIn,
      tokenOut,
      isRemoval,
      base,
      apiCallData
    );

    // Approve through base's invoke
    _approvalThroughBase(base, tokenIn, PENDLE_ROUTER, amountIn);

    // Execute through base's invoke
    bytes memory result = IAFiBase(base).invoke(PENDLE_ROUTER, msg.value, callData);
    
    // Decode result
    if (result.length > 0) {
      (actualAmount, ,) = abi.decode(result, (uint256, uint256, uint256));
    }
    
    require(actualAmount >= minExpectedAmount, "Insufficient output");
    
    // Reset approval
    _approvalThroughBase(base, tokenIn, PENDLE_ROUTER, 0);
    
    return actualAmount;
  }

  /**
  * @notice Sets the bundler contract address for a given AtvBase contract
  * @param atvBundlerAddress The address of the bundler contract to associate with the AtvBase contract
  */
  function setbundlerAddress(address atvBundlerAddress) external onlyOwner {
    require(atvBundlerAddress != address(0), "Invalid atvBundler contract address");
    bundlerContract = atvBundlerAddress;
  }

  function setStorage(address _atvStorage) external onlyOwner {
    require(_atvStorage != address(0), "Invalid AtvBase contract address");
    atvStorage = _atvStorage;
  }

  function setManager(address _atvManager) external onlyOwner {
    require(_atvManager != address(0), "Invalid AtvBase contract address");
    aFiManager = _atvManager;
  }

  // Helper function for approvals through base
  function _approvalThroughBase(
    address base,
    address token,
    address spender,
    uint256 amount
  ) internal {
    bytes memory callData = abi.encodeWithSelector(
      IERC20.approve.selector,
      spender,
      amount+200
    );
    bytes4 selector = IERC20.approve.selector;
    IAFiBase(base).invoke(token, 0, callData);

    uint256 allowance = IERC20(token).allowance(base, spender);
    require(allowance >= amount, "LP approval failed");
  }
  
  /**
   * @notice Sets whether an AtvBase contract is allowed to interact with this contract
   * @param atvContract The AtvBase contract address
   * @param allowed True to allow, false to disallow
   */
  function setAtvContractAllowed(address atvContract, bool allowed) external {
    require(atvContract != address(0), "Invalid AtvBase contract address");
    require(msg.sender == atvContractController[atvContract], "Not authorized");
    allowedAtvContracts[atvContract] = allowed;
    emit AtvContractAllowed(atvContract, allowed);
  }

  function setAtvContractController(
    address atvContract,
    address _atvContractController
  ) external onlyOwner {
    require(_atvContractController != address(0), "Invalid controller address");
    atvContractController[atvContract] = _atvContractController;
  }

  /**
   * @notice To add a new team wallet.
   * @param aFiContract Address of the AFi contract.
   * @param wallet Wallet address that has to be added in the `teamWallets` array.
   * @param isActive Boolean indicating whether to set the wallet to either active/inactive.
   * @param isPresent Boolean indicating the present status of the wallet.
   */
  function addTeamWallet(
    address aFiContract,
    address wallet,
    bool isActive,
    bool isPresent
  ) external nonReentrant {
    require(isAFiActive[aFiContract], "Vault not active");
    require(msg.sender == aFiManager, "Invalid caller");
    require(wallet != address(0), "Zero address");
    require(totalActiveTeamWallets[aFiContract] > 0, "No wallet is set");
    if (!teamWalletInAFi[aFiContract][wallet].isPresent && isPresent) {
      teamWalletsOfAFi[aFiContract].push(wallet);
      teamWalletInAFi[aFiContract][wallet].isPresent = isPresent;

      // Write to contract storage
      if (!teamWalletInAFi[aFiContract][wallet].isActive && isActive) {
        teamWalletInAFi[aFiContract][wallet].isActive = isActive;
        totalActiveTeamWallets[aFiContract]++;
      }
      teamWalletInAFi[aFiContract][wallet].walletAddress = wallet;
    }
    emit TeamWalletAdd(aFiContract, wallet, true);
  }

  function validateAddress(address add1, address add2) internal pure{
    require(add1 != add2, "ATVAdapter01");
  } 

  /**
   * @notice To deactivate a team wallet.
   * @param aFiContract Address of the AFi contract.
   * @param wallet Wallet address that has to be deactivated.
   */
  function deactivateTeamWallet(
    address aFiContract,
    address wallet
  ) external onlyOwner nonReentrant {
    // solhint-disable-next-line reason-string
    validateAddress(aFiContract, address(0));
    validateAddress(wallet, address(0));

    require(isAFiActive[aFiContract], "Vault not active");
    require(teamWalletInAFi[aFiContract][wallet].isActive, "wallet not active");
    totalActiveTeamWallets[aFiContract]--;

    // Write to contract storage
    teamWalletInAFi[aFiContract][wallet].isActive = false;
    emit DeactivateTeamWallet(aFiContract, wallet);
  }

  /**
   * @notice Validates a boolean flag.
   * @param flag The boolean flag to validate.
   */
  function validateFlag(bool flag) internal pure {
    require(flag, "ATVAdapter02");
  }

  /**
   * @notice To reactivated a team wallet.
   * @param aFiContract Address of the AFi contract.
   * @param wallet address that has to be reactivated.
   */
  function reActivateTeamWallet(
    address aFiContract,
    address wallet
  ) external onlyOwner nonReentrant {
    // solhint-disable-next-line reason-string
    validateAddress(aFiContract, address(0));
    validateAddress(wallet, address(0));
    validateFlag(isAFiActive[aFiContract]);
    validateFlag(teamWalletInAFi[aFiContract][wallet].isPresent);
    validateFlag(!teamWalletInAFi[aFiContract][wallet].isActive);
    totalActiveTeamWallets[aFiContract]++;

    // Write to contract storage
    teamWalletInAFi[aFiContract][wallet].isActive = true;
    emit ReActivateTeamWallet(aFiContract, wallet);
  }

  function getTotalActiveWallets(
    address aFiContract
  ) public view returns (uint) {
    return totalActiveTeamWallets[aFiContract];
  }
  
  function compareIntEqual(uint256 val1, uint256 val2) internal pure {
    require(val1 == val2, "AFS10");
  }

  /**
   * @notice To add given wallet address to the contract storage.
   * @param aFiContract Address of the AFi contract.
   * @param _teamWallets An array of wallet addresses.
   */
  function setTeamWallets(
    address aFiContract,
    address[] memory _teamWallets
  ) external nonReentrant {
    validateFlag(!onlyOnce[aFiContract]);
    require(msg.sender == atvStorage, "invalid caller");
    uint tWalletLength = _teamWallets.length;

    // Check if the team wallets have already been set
    compareIntEqual(totalActiveTeamWallets[aFiContract], 0);

    totalActiveTeamWallets[aFiContract] = tWalletLength;

    for (uint i = 0; i < tWalletLength; i++) {
      address wallet = _teamWallets[i];
      validateAddress(_teamWallets[i], address(0));

      TeamWallet memory tWallet = teamWalletInAFi[aFiContract][wallet];

      if (!tWallet.isPresent) {
        teamWalletsOfAFi[aFiContract].push(wallet);
        tWallet.isPresent = true;
        tWallet.isActive = true;
        tWallet.walletAddress = wallet;

        // Write to contract storage
        teamWalletInAFi[aFiContract][wallet] = tWallet;

        emit ReActivateTeamWallet(aFiContract, wallet);
      } else {
        // only for duplicacy
        totalActiveTeamWallets[aFiContract]--;
      }
    }
    onlyOnce[aFiContract] = true;
  }

  function setActiveRebalancedStatus(
    address aFiContract,
    bool status
  ) external {
    require(msg.sender == atvStorage, "invalid caller");
    isActiveRebalanced[aFiContract] = status;
    emit SetActiveRebalancedStatus(aFiContract, status);
  }

  /**
   * @notice Returns the team wallet details.
   * @param aFiContract Address of the AFi contract.
   * @param _wallet Team wallet address.
   * @return isActive Boolean indicating whether to set the wallet to either active/inactive.
   * @return isPresent Boolean indicating the present status of the wallet.
   */
  function getTeamWalletDetails(
    address aFiContract,
    address _wallet
  ) public view returns (bool isActive, bool isPresent) {
    return (
      teamWalletInAFi[aFiContract][_wallet].isActive,
      teamWalletInAFi[aFiContract][_wallet].isPresent
    );
  }

  /**
   * @notice Returns the array of team wallet addresses.
   * @param aFiContract Address of the AFi contract.
   * @return _teamWallets Array of teamWallets.
   */
  function getTeamWalletsOfAFi(
    address aFiContract
  ) public view returns (address[] memory _teamWallets) {
    _teamWallets = teamWalletsOfAFi[aFiContract];
  }

  function isAFiActiveRebalanced(
    address aFiContract
  ) external view returns (bool _isActiveRebalanced) {
    _isActiveRebalanced = isActiveRebalanced[aFiContract];
  }

  /**
   * @notice To set the AFi contract status.
   * @dev Requirements: It can be invoked only by the storage contract.
   * @param aFiContract Address of the AFiContract.
   * @param active status for afiContracts.
   */
  function setAFiActive(address aFiContract, bool active) external {
    require(msg.sender == atvStorage, "invalid caller");
    // Check if the contract is already active and trying to activate it again
    require(active != isAFiActive[aFiContract], "AFS14");
    isAFiActive[aFiContract] = active;
    emit SetAFiActive(aFiContract, isAFiActive[aFiContract]);
  }
}
