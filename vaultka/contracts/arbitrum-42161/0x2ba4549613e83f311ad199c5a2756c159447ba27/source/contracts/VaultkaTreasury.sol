pragma solidity 0.8.18;
// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

import "./interfaces/IGMXStrategy.sol";
import "./interfaces/IesVKAStaking.sol";

import "./interfaces/IChainLinkOracle.sol";

import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";
import "@uniswap/v3-periphery/contracts/interfaces/IQuoterV2.sol";

import { IChefIncentivesController } from "./VotingEscrow/IVotingEscrow/IChefIncentivesController.sol";

contract VaultkaTreasury is OwnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using CountersUpgradeable for CountersUpgradeable.Counter;

    address public VaultkaToken;
    address public USDC;
    address public WETH;
    address public esVKAStaking;
    address public uniRouterV3;
    address public quoterV2;
    address public ProtocolReserve;

    uint256 public dualStakingFeeBps;
    uint256 public protocolFeeBps;
    uint256 public buybackFeeBps;
    uint24 public uniswapFee;
    uint256 public uniswapSlippage;

    CountersUpgradeable.Counter public epoch;

    struct EpochsRecords {
        uint256 usdcFees;
        uint256 protocolFees;
        uint256 buybackFees;
        uint256 dualStakingFees;
        uint256 distributionTimestamp;
        uint256 epoch;
    }
    //
    struct Path {
        address tokenIn;
        uint24 fee;
        address tokenOut;
    }

    mapping(uint256 => EpochsRecords) public epochsRecords;
    mapping(address => bool) public isSupportedAsset;
    mapping(address => bool) public hasSpecificPath;
    mapping(address => bytes) public assetPath;
    //chainlink oracle link for assets
    mapping(address => address) public chainlinkOracle;
    address[] public supportedAssets;
    bytes public buybackPath;
    address keeper;

    event esVKAStakingSet(address indexed setter);
    event UnirouterSet(address indexed setterV3);
    event ProtocolFundChanged(address indexed setter);
    event UniSlippageSet(uint256 indexed setter);
    event UniFeeSet(uint24 indexed setter);
    event AssetAdded(address indexed setter);
    event AssetRemoved(address indexed setter);
    event ProtocolFeeDistributed(uint256 indexed fees);
    event ProtocolFeesChanged(uint256 indexed dualStakingFee, uint256 indexed protocolFees, uint256 indexed buybackFee);
    event BuyBackPathChanged(bytes path);
    event KeeperChanged(address indexed keeper);

    ///@custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _USDC,
        address _VaultkaToken,
        address _uniRouterV3,
        uint256 _uniswapSlippage
    ) external initializer {
        require(
            _VaultkaToken != address(0) && _USDC != address(0) && _uniRouterV3 != address(0),
            "VaultkaTreasury: Invalid address"
        );

        VaultkaToken = _VaultkaToken;
        USDC = _USDC;
        uniRouterV3 = _uniRouterV3;
        uniswapFee = 500;
        uniswapSlippage = _uniswapSlippage;
        __Ownable_init();
    }

    //function to set uniswapslippage
    function setUniswapSlippage(uint256 _slippage) external onlyOwner {
        require(_slippage <= 10000, "VaultkaTreasury: Invalid slippage");
        uniswapSlippage = _slippage;
        emit UniSlippageSet(_slippage);
    }

    function setesVKAStaking(address _esVKAStaking) external onlyOwner {
        require(_esVKAStaking != address(0), "VaultkaTreasury: Invalid address");
        esVKAStaking = _esVKAStaking;
        emit esVKAStakingSet(_esVKAStaking);
    }

    function setUniRouters(address _uniRouterV3, address _quoterV2) external onlyOwner {
        require(_uniRouterV3 != address(0) && _quoterV2 != address(0), "VaultkaTreasury: Invalid address");
        uniRouterV3 = _uniRouterV3;
        quoterV2 = _quoterV2;

        emit UnirouterSet(_uniRouterV3);
    }

    function setProtocolReserveFund(address _fund) external onlyOwner {
        require(_fund != address(0), "VaultkaTreasury: Invalid address");
        ProtocolReserve = _fund;
        emit ProtocolFundChanged(_fund);
    }

    function setFee(uint24 _fee) external onlyOwner {
        require(_fee <= 10000, "VaultkaTreasury: Invalid fee");
        uniswapFee = _fee;
        emit UniFeeSet(_fee);
    }

    function setProtocolFeesBps(
        uint256 _dualStakingFeeBps,
        uint256 _protocolFeeBps,
        uint256 _buybackFeeBps
    ) external onlyOwner {
        require(_dualStakingFeeBps + _protocolFeeBps + _buybackFeeBps == 10000, "VaultkaTreasury: Invalid fee bps");
        dualStakingFeeBps = _dualStakingFeeBps;
        protocolFeeBps = _protocolFeeBps;
        buybackFeeBps = _buybackFeeBps;
        emit ProtocolFeesChanged(dualStakingFeeBps, protocolFeeBps, buybackFeeBps);
    }

    function addAsset(address _asset, bool _path, Path memory _pathToUSDC, address _oracle) external onlyOwner {
        require(_asset != address(0), "VaultkaTreasury: Invalid address");
        require(_oracle != address(0), "VaultkaTreasury: Invalid address");
        require(!isSupportedAsset[_asset], "VaultkaTreasury: address present");
        isSupportedAsset[_asset] = true;
        supportedAssets.push(_asset);
        if (_path) {
            hasSpecificPath[_asset] = true;

            assetPath[_asset] = abi.encodePacked(_pathToUSDC.tokenIn, _pathToUSDC.fee, _pathToUSDC.tokenOut);
        }
        chainlinkOracle[_asset] = _oracle;
        emit AssetAdded(_asset);
    }

    function removeAsset(address _asset) external onlyOwner {
        require(isSupportedAsset[_asset], "VaultkaTreasury: not registered as pool");

        // Delete from the mapping.
        delete isSupportedAsset[_asset];
        uint256 noOfAssets = supportedAssets.length;

        for (uint256 i = 0; i < noOfAssets; i++) {
            if (supportedAssets[i] == _asset) {
                // Replace the asset to remove with the last asset in the array.
                supportedAssets[i] = supportedAssets[noOfAssets - 1];
                // Reduce the array size by 1.
                supportedAssets.pop();
                break;
            }
        }
        emit AssetRemoved(_asset);
    }

    function setBuybackPath(Path memory _pathToVKA, address _intermToken) external onlyOwner {
        //require tokenIn is USDC
        require(_pathToVKA.tokenIn == USDC, "VaultkaTreasury: Invalid address");
        require(_pathToVKA.tokenOut == VaultkaToken, "VaultkaTreasury: Invalid address");
        buybackPath = abi.encodePacked(
            _pathToVKA.tokenIn,
            uniswapFee,
            _intermToken,
            _pathToVKA.fee,
            _pathToVKA.tokenOut
        );
        emit BuyBackPathChanged(buybackPath);
    }

    function allocateRevenueSplit() external {
        require(msg.sender == keeper, "VaultkaTreasury: Invalid caller");
        EpochsRecords storage er = epochsRecords[epoch.current()];
        uint256 noOfAssets = supportedAssets.length;
        for (uint256 i = 0; i < noOfAssets; i++) {
            uint256 feesCollectedAsset = IERC20Upgradeable(supportedAssets[i]).balanceOf(address(this));
            if (feesCollectedAsset == 0) {
                continue;
            }
            uint256 oraclePrice = uint256(IChainLinkOracle(chainlinkOracle[supportedAssets[i]]).latestAnswer()) * 1e10;

            //expeceted out is always in 1e6;
            uint256 expectedAmountOut = (feesCollectedAsset * oraclePrice) / 1e18 / 1e12;

            bytes memory path;
            if (hasSpecificPath[supportedAssets[i]]) {
                path = assetPath[supportedAssets[i]];
            } else {
                path = abi.encodePacked(supportedAssets[i], uniswapFee, USDC);
            }
            _swapExactInput(supportedAssets[i], feesCollectedAsset, expectedAmountOut, path);
        }
        uint256 feesCollectedUSDC = IERC20Upgradeable(USDC).balanceOf(address(this));
        er.usdcFees = feesCollectedUSDC;

        uint256 feesCollectedUSDCForProtocol = (feesCollectedUSDC * protocolFeeBps) / 10000;
        uint256 feesCollectedUSDCForBuyback = (feesCollectedUSDC * buybackFeeBps) / 10000;
        uint256 feesCollectedUSDCForDualStaking = (feesCollectedUSDC * dualStakingFeeBps) / 10000;

        er.protocolFees = feesCollectedUSDCForProtocol;
        er.buybackFees = feesCollectedUSDCForBuyback;
        er.dualStakingFees = feesCollectedUSDCForDualStaking;
        er.distributionTimestamp = block.timestamp;
        er.epoch = epoch.current();
        epoch.increment();

        IERC20Upgradeable(USDC).safeTransfer(ProtocolReserve, feesCollectedUSDCForProtocol);
        handleBuyBackAndBurn(USDC, feesCollectedUSDCForBuyback, buybackPath);

        //if someone is staking in dualStaking, then send the fees to VeChef (updated)

        if (feesCollectedUSDCForDualStaking > 0) {
            IERC20Upgradeable(USDC).safeTransfer(esVKAStaking, feesCollectedUSDCForDualStaking);
            IChefIncentivesController(esVKAStaking).registerRewardDeposit(feesCollectedUSDCForDualStaking);
        }

        emit ProtocolFeeDistributed(feesCollectedUSDC);
    }

    function _swapExactInput(
        address _tokenIn,
        uint256 _amountIn,
        uint256 _expectedAmountOut,
        bytes memory _path
    ) internal returns (uint256 amountOut) {
        // Transfer the specified amount of DAI to this contract.
        // Approve the router to spend DAI.
        TransferHelper.safeApprove(_tokenIn, uniRouterV3, _amountIn);

        ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
            path: _path,
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: _amountIn,
            amountOutMinimum: _expectedAmountOut - (_expectedAmountOut * uniswapSlippage) / 10000
        });
        // The call to `exactInputSingle` executes the swap.
        amountOut = ISwapRouter(uniRouterV3).exactInput(params);
    }

    function handleBuyBackAndBurn(
        address _tokenIn,
        uint256 _amountIn,
        bytes memory _path
    ) public returns (uint256 amountOut) {
        //require only owner or address(this)
        require(
            msg.sender == owner() || msg.sender == address(this) || msg.sender == keeper,
            "VaultkaTreasury: Invalid caller"
        );
        require(_tokenIn != address(0), "VaultkaTreasury: Invalid address");
        require(_amountIn > 0, "VaultkaTreasury: Invalid amount");
        IQuoterV2 quoter = IQuoterV2(quoterV2);
        (uint256 expectedAmountOut, , , ) = quoter.quoteExactInput(_path, _amountIn);
        amountOut = _swapExactInput(_tokenIn, _amountIn, expectedAmountOut, _path);
        uint256 toBurn = IERC20Upgradeable(VaultkaToken).balanceOf(address(this));
        ERC20Burnable(VaultkaToken).burn(toBurn);
        emit ProtocolFeeDistributed(amountOut);
    }

    //add a function to let owner to withdraw funds
    function withdrawFees(address _token, address _to) external onlyOwner {
        require(_token != address(0), "VaultkaTreasury: Invalid address");
        require(_to != address(0), "VaultkaTreasury: Invalid address");
        uint256 balance = IERC20Upgradeable(_token).balanceOf(address(this));
        IERC20Upgradeable(_token).safeTransfer(_to, balance);
    }

    function setKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), "VaultkaTreasury: Invalid address");
        keeper = _keeper;
        emit KeeperChanged(_keeper);
    }
}
