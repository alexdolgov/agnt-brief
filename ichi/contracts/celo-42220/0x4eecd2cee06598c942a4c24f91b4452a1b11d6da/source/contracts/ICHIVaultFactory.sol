// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;

import { IICHIVaultFactory } from "../interfaces/IICHIVaultFactory.sol";
import { IUniswapV3Factory } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { ICHIVaultDeployer } from "./lib/ICHIVaultDeployer.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";

contract ICHIVaultFactory is IICHIVaultFactory, ReentrancyGuard, Ownable {
    using SafeMath for uint256;

    address constant NULL_ADDRESS = address(0);
    uint256 constant DEFAULT_AMM_FEE = 0; // 0%
    uint256 constant DEFAULT_BASE_FEE = 10 ** 17; // 10%
    uint256 constant DEFAULT_BASE_FEE_SPLIT = 5 * 10 ** 17; // 50%
    uint256 constant PRECISION = 10 ** 18;
    uint32 constant DEFAULT_TWAP_PERIOD = 60 minutes;
    uint16 constant MIN_OBSERVATIONS = 50;

    address public immutable override uniswapV3Factory;
    string public override ammName;

    address public override feeRecipient;
    uint256 public override ammFee;
    uint256 public override baseFee;
    uint256 public override baseFeeSplit;

    mapping(bytes32 => address) public getICHIVault;
    address[] public allVaults;

    /**
     @notice creates an instance of ICHIVaultFactory
     @param _uniswapV3Factory Uniswap V3 factory
     */
    constructor(address _uniswapV3Factory, string memory _ammName) {
        require(_uniswapV3Factory != NULL_ADDRESS, "IVF.constructor: zero address");
        uniswapV3Factory = _uniswapV3Factory;
        ammName = _ammName;
        feeRecipient = msg.sender;
        ammFee = DEFAULT_AMM_FEE;
        baseFee = DEFAULT_BASE_FEE;
        baseFeeSplit = DEFAULT_BASE_FEE_SPLIT;
        emit DeployICHIVaultFactory(msg.sender, _uniswapV3Factory);
    }

    /**
     @notice Creates an ICHIVault instance for specified tokenA/tokenB/fee.
            If necessary, creates underlying Uniswap V3 pool. AllowToken parameters
            control whether the ICHIVault permits one-sided or two-sided
            liquidity provision.
    @param tokenA tokenA of the Uniswap V3 pool.
    @param allowTokenA Flag indicating if tokenA is accepted during deposit.
    @param tokenB tokenB of the Uniswap V3 pool.
    @param allowTokenB Flag indicating if tokenB is accepted during deposit.
    @param fee Fee setting of the Uniswap V3 pool.
    @param ichiVault Address of the created ICHIVault.
    */
    function createICHIVault(
        address tokenA,
        bool allowTokenA,
        address tokenB,
        bool allowTokenB,
        uint24 fee
    ) external override nonReentrant returns (address ichiVault) {
        require(tokenA != tokenB, "IVF.createICHIVault: identical tokens");

        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        (bool allowToken0, bool allowToken1) = tokenA < tokenB
            ? (allowTokenA, allowTokenB)
            : (allowTokenB, allowTokenA);

        require(token0 != NULL_ADDRESS, "IVF.createICHIVault: zero address");
        require(allowTokenA || allowTokenB, "IVF.createICHIVault: no allowed tokens");

        // deployer, token0, token1, fee, allowToken1, allowToken2 -> ichiVault address
        require(
            getICHIVault[genKey(msg.sender, token0, token1, fee, allowToken0, allowToken1)] == NULL_ADDRESS,
            "IVF.createICHIVault: vault exists"
        );

        int24 tickSpacing = IUniswapV3Factory(uniswapV3Factory).feeAmountTickSpacing(fee);
        require(tickSpacing != 0, "IVF.createICHIVault: fee incorrect");
        address pool = IUniswapV3Factory(uniswapV3Factory).getPool(tokenA, tokenB, fee);

        require(pool != NULL_ADDRESS, "IVF.createICHIVault: pool must exist");

        (, , , , uint16 observationCardinalityNext, , ) = IUniswapV3Pool(pool).slot0();

        require(observationCardinalityNext >= MIN_OBSERVATIONS, "IVF.createICHIVault: observation cardinality too low");

        ichiVault = ICHIVaultDeployer.createICHIVault(
            pool,
            token0,
            allowToken0,
            token1,
            allowToken1,
            fee,
            tickSpacing,
            DEFAULT_TWAP_PERIOD
        );

        // populate mapping in both directions so that token0 and token1 ordering is not relevant
        getICHIVault[genKey(msg.sender, token0, token1, fee, allowToken0, allowToken1)] = ichiVault;
        getICHIVault[genKey(msg.sender, token1, token0, fee, allowToken1, allowToken0)] = ichiVault;
        allVaults.push(ichiVault);

        emit ICHIVaultCreated(msg.sender, ichiVault, token0, allowToken0, token1, allowToken1, fee, allVaults.length);
    }

    /**
     @notice Sets the fee recipient account address, where portion of the collected swap fees will be distributed
     @dev onlyOwner
     @param _feeRecipient The fee recipient account address
     */
    function setFeeRecipient(address _feeRecipient) external override onlyOwner {
        require(_feeRecipient != NULL_ADDRESS, "IVF.setFeeRecipient: zero address");
        feeRecipient = _feeRecipient;
        emit FeeRecipient(msg.sender, _feeRecipient);
    }

    /**
     @notice Sets the fee percentage to be taked from the accumulated pool's swap fees.
             This percentage is then sent to the AMM, to be used for external incentive programs
     @dev onlyOwner
     @param _ammFee The fee percentage to be taked from the accumulated pool's swap fee
     */
    function setAmmFee(uint256 _ammFee) external override onlyOwner {
        require(baseFee.add(_ammFee) <= PRECISION, "IVF.setAmmFee: fees must be <= 10**18");
        ammFee = _ammFee;
        emit AmmFee(msg.sender, _ammFee);
    }

    /**
     @notice Sets the fee percentage taken from the pool's swap fees.
            This fee is distributed between feeRecipient and affiliate accounts
    @dev onlyOwner
    @param _baseFee Fee percentage taken from the pool's swap fee
    */
    function setBaseFee(uint256 _baseFee) external override onlyOwner {
        require(_baseFee <= PRECISION, "IVF.setBaseFee: must be <= 10**18");
        baseFee = _baseFee;
        emit BaseFee(msg.sender, _baseFee);
    }

    /**
     @notice Sets the fee split ratio between feeRecipient and affiliate accounts.
            The ratio formula is (baseFeeSplit)/(100 - baseFeeSplit). For example,
            for a 20/80 ratio (20% to feeRecipient), set baseFeeSplit to 20.
    @dev onlyOwner
    @param _baseFeeSplit The fee split ratio between feeRecipient and affiliate accounts
    */
    function setBaseFeeSplit(uint256 _baseFeeSplit) external override onlyOwner {
        require(_baseFeeSplit <= PRECISION, "IVF.setBaseFeeSplit: must be <= 10**18");
        baseFeeSplit = _baseFeeSplit;
        emit BaseFeeSplit(msg.sender, _baseFeeSplit);
    }

    /**
     * @notice generate a key for getIchiVault
     * @param deployer vault creator
     * @param token0 the first of two tokens in the vault
     * @param token1 the second of two tokens in the vault
     * @param fee the uniswap v3 fee
     * @param allowToken0 allow deposits
     * @param allowToken1 allow deposits
     */
    function genKey(
        address deployer,
        address token0,
        address token1,
        uint24 fee,
        bool allowToken0,
        bool allowToken1
    ) public pure override returns (bytes32 key) {
        key = keccak256(abi.encodePacked(deployer, token0, token1, fee, allowToken0, allowToken1));
    }
}
