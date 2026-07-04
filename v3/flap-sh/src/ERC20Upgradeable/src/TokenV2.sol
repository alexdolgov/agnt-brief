// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {ITokenV2} from "./interfaces/ITokenV2.sol";

import {ERC20Upgradeable} from "@openzeppelin-contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20PermitUpgradeable} from
    "@openzeppelin-contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {PoolAddress} from "./libraries/PoolAddress.sol";
import {IPancakeV3Factory} from "./interfaces/3rd/IPancakeV3Factory.sol";

/// @notice Token with max supply and metaURI
contract TokenV2BETATEST is ITokenV2, ERC20PermitUpgradeable, OwnableUpgradeable {
    /// @notice The max supply of the token
    uint256 public maxSupply;

    /// @notice URI for the token metadata
    string public metaURI;

    /// @notice If true, transferring to uniswap v2/v3 pool is not allowed
    bool public transferConstraints;

    /// @dev uniswap v2 pool
    address internal uniswapV2Pool;

    /// @dev uni v3 pool
    address internal uniswapV3Pool;

    /// @dev The uni v3 pool factory
    address internal immutable v3Factory;

    /// @dev The uni v3 pool init code hash
    bytes32 internal immutable UNIV3_POOL_INIT_CODE_HASH;

    /// @dev The uni v3 pool fee, this also decides the tickSpacing of the pool
    uint24 internal immutable UNIV3_FEE;

    /// @dev The target DEX is Pancake
    bool internal immutable DEX_IS_PANCAKE;

    /// @dev The uni v2 pool factory
    address internal immutable v2Factory;

    /// @dev The uni v2 pool init code hash
    bytes32 internal immutable UNIV2_POOL_INIT_CODE_HASH;

    /// @dev The WETH address
    address internal immutable WETH;

    constructor(
        address v2Factory_,
        bytes32 v2InitCodeHash_,
        address v3Factory_,
        bytes32 v3InitCodeHash_,
        address weth_,
        uint24 v3fee_,
        bool isPancake_
    ) {
        v2Factory = v2Factory_;
        UNIV2_POOL_INIT_CODE_HASH = v2InitCodeHash_;
        v3Factory = v3Factory_;
        UNIV3_POOL_INIT_CODE_HASH = v3InitCodeHash_;
        WETH = weth_;
        UNIV3_FEE = v3fee_;

        DEX_IS_PANCAKE = isPancake_;
    }

    function initialize(string memory name_, string memory symbol_, string memory meta_, uint256 maxSupply_)
        external
        override
        initializer
    {
        __ERC20_init(name_, symbol_);
        __ERC20Permit_init(name_);
        __Ownable_init();

        maxSupply = maxSupply_;
        metaURI = meta_;

        // restrict transferring when initialized
        transferConstraints = true;

        // predict uniswap v2 & v3 pool addresses
        uniswapV2Pool = PoolAddress.computeV2Address(v2Factory, UNIV2_POOL_INIT_CODE_HASH, address(this), WETH);

        if (DEX_IS_PANCAKE) {
            // In pancake v3, the factory and the deployer are two distinct addresses.
            // And the pool address is derived from the deployer address:
            // https://github.com/pancakeswap/pancake-v3-contracts/blob/5cc479f0c5a98966c74d94700057b8c3ca629afd/projects/v3-core/contracts/PancakeV3Factory.sol#L75

            address deployer = IPancakeV3Factory(v3Factory).poolDeployer();

            uniswapV3Pool =
                PoolAddress.computeV3Address(deployer, UNIV3_POOL_INIT_CODE_HASH, address(this), WETH, UNIV3_FEE);
        } else {
            uniswapV3Pool =
                PoolAddress.computeV3Address(v3Factory, UNIV3_POOL_INIT_CODE_HASH, address(this), WETH, UNIV3_FEE);
        }

        // mint the maxsupply to the msg.sender
        _mint(msg.sender, maxSupply);
    }

    function _afterTokenTransfer(address from, address to, uint256 amount) internal override {
        // emit our custom event for easier indexing
        emit TransferFlapToken(from, to, amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256) internal view override {
        if (transferConstraints) {
            if (from == uniswapV2Pool || to == uniswapV2Pool) {
                revert("XXXXXX");
            }

            if (from == uniswapV3Pool || to == uniswapV3Pool) {
                revert("YYYYYYY");
            }
        }
    }

    /// @inheritdoc ITokenV2
    function removeTransferConstraints() external override onlyOwner {
        transferConstraints = false;
    }

    /// @dev set the uniswap v2 and v3 pool addresses
    function setPools(address v2Pool, address v3Pool) external onlyOwner {
        uniswapV2Pool = v2Pool;
        uniswapV3Pool = v3Pool;
    }

    /// @inheritdoc ITokenV2
    function pools() external view override returns (address v2, address v3) {
        return (uniswapV2Pool, uniswapV3Pool);
    }
}
