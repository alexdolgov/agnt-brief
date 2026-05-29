// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;

import { IICHIVaultFactory } from "../interfaces/IICHIVaultFactory.sol";
import { IAlgebraFactory } from "@cryptoalgebra/v1.9-core/contracts/interfaces/IAlgebraFactory.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { ICHIVaultDeployer } from "./lib/ICHIVaultDeployer.sol";
import { IAlgebraPool } from "@cryptoalgebra/v1.9-core/contracts/interfaces/IAlgebraPool.sol";
import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";

contract ICHIVaultFactory is IICHIVaultFactory, ReentrancyGuard, Ownable {
    using SafeMath for uint256;

    address constant NULL_ADDRESS = address(0);
    uint256 constant DEFAULT_AMM_FEE = 0; // 0%
    uint256 constant DEFAULT_BASE_FEE = 2 * 10 ** 17; // 20%
    uint256 constant DEFAULT_BASE_FEE_SPLIT = 5 * 10 ** 17; // 50%
    uint256 constant PRECISION = 10 ** 18;
    uint32 constant DEFAULT_TWAP_PERIOD = 60 minutes;
    address public immutable override algebraFactory;
    address public override feeRecipient;
    uint256 public override ammFee;
    uint256 public override baseFee;
    uint256 public override baseFeeSplit;

    mapping(bytes32 => address) public getICHIVault;
    address[] public allVaults;

    /**
     @notice creates an instance of ICHIVaultFactory
     @param _algebraFactory Algebra V1 factory
     */
    constructor(address _algebraFactory) {
        require(_algebraFactory != NULL_ADDRESS, "IVF.constructor: zero address");
        algebraFactory = _algebraFactory;
        feeRecipient = msg.sender;
        ammFee = DEFAULT_AMM_FEE;
        baseFee = DEFAULT_BASE_FEE;
        baseFeeSplit = DEFAULT_BASE_FEE_SPLIT;
        emit DeployICHIVaultFactory(msg.sender, _algebraFactory);
    }

    /**
     @notice Creates ICHIVault for given tokenA/tokenB/fee, possibly making Uniswap V3 pool. Controls
             one-sided/two-sided liquidity provision via AllowToken.
     @param tokenA TokenA of the Algebra V1 pool.
     @param allowTokenA If true, tokenA is accepted during deposit.
     @param tokenB TokenB of the Algebra V1 pool.
     @param allowTokenB If true, tokenB is accepted during deposit.
     @return ichiVault Address of the newly created ICHIVault.
     */
    function createICHIVault(
        address tokenA,
        bool allowTokenA,
        address tokenB,
        bool allowTokenB
    ) external override nonReentrant returns (address ichiVault) {
        require(tokenA != tokenB, "IVF.createICHIVault: identical tokens");

        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        (bool allowToken0, bool allowToken1) = tokenA < tokenB
            ? (allowTokenA, allowTokenB)
            : (allowTokenB, allowTokenA);

        require(token0 != NULL_ADDRESS, "IVF.createICHIVault: zero address");
        require(allowTokenA || allowTokenB, "IVF.createICHIVault: no allowed tokens");

        require(
            getICHIVault[genKey(msg.sender, token0, token1, allowToken0, allowToken1)] == NULL_ADDRESS,
            "IVF.createICHIVault: vault exists"
        );

        address pool = IAlgebraFactory(algebraFactory).poolByPair(tokenA, tokenB);

        require(pool != NULL_ADDRESS, "IVF.createICHIVault: pool must exist");

        (, , , , , , bool unlocked) = IAlgebraPool(pool).globalState();

        require(unlocked, "IVF.createICHIVault: pool is locked");

        ichiVault = ICHIVaultDeployer.createICHIVault(
            pool,
            token0,
            allowToken0,
            token1,
            allowToken1,
            DEFAULT_TWAP_PERIOD,
            allVaults.length
        );

        getICHIVault[genKey(msg.sender, token0, token1, allowToken0, allowToken1)] = ichiVault;
        getICHIVault[genKey(msg.sender, token1, token0, allowToken1, allowToken0)] = ichiVault; // populate mapping in the reverse direction
        allVaults.push(ichiVault);

        emit ICHIVaultCreated(msg.sender, ichiVault, token0, allowToken0, token1, allowToken1, allVaults.length);
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
     @notice Sets fee percentage taken from pool's swap fees, used for AMM external incentives.
     @dev Access restricted to the owner.
     @param _ammFee Fee percentage from pool's swap fees for AMM.
     */
    function setAmmFee(uint256 _ammFee) external override onlyOwner {
        require(baseFee.add(_ammFee) <= PRECISION, "IVF.setAmmFee: fees must be <= 10**18");
        ammFee = _ammFee;
        emit AmmFee(msg.sender, _ammFee);
    }

    /**
     @notice Sets fee percentage from pool's swap fees, distributed to feeRecipient and affiliates.
     @dev Access restricted to the owner.
     @param _baseFee Fee percentage taken from pool's swap fees.
     */
    function setBaseFee(uint256 _baseFee) external override onlyOwner {
        require(ammFee.add(_baseFee) <= PRECISION, "IVF.setBaseFee: fees must be <= 10**18");
        baseFee = _baseFee;
        emit BaseFee(msg.sender, _baseFee);
    }

    /**
     @notice Sets fee split ratio between feeRecipient and affiliates. Ratio as (baseFeeSplit)/(100 - baseFeeSplit).
             E.g., for a 20/80 split, set baseFeeSplit to 20.
     @dev Accessible only by the owner.
     @param _baseFeeSplit Fee split ratio between feeRecipient and affiliates.
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
     * @param allowToken0 allow deposits
     * @param allowToken1 allow deposits
     * @return key generated key
     */
    function genKey(
        address deployer,
        address token0,
        address token1,
        bool allowToken0,
        bool allowToken1
    ) public pure override returns (bytes32 key) {
        key = keccak256(abi.encodePacked(deployer, token0, token1, allowToken0, allowToken1));
    }
}
