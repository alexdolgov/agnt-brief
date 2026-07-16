// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./constants/addresses.sol";
import "./interfaces/IExchange.sol";
import "./interfaces/IPriceOracle.sol";
import "./interfaces/IStaking.sol";
import "./interfaces/ITreasury.sol";
import "./interfaces/IUSDR.sol";
import "./tokens/interfaces/IMintableERC20.sol";
import "./AddressAccessor.sol";

contract USDRExchange is AddressAccessor, IExchange, Pausable {
    using SafeERC20 for IERC20;

    struct TNGBLMintingStats {
        uint256 tngblValue;
        uint256 usdrMinted;
    }

    uint256 public depositFee; // 1% = 100
    uint256 public withdrawalFee;

    uint16 public tngblMultiplier; // 2x = 200
    uint8 public lowerTNGBLMintingThreshold;

    uint256 private _scale;

    TNGBLMintingStats private _tngblMintingStats;

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        tngblMultiplier = 200;
        lowerTNGBLMintingThreshold = 88;
    }

    function avgTNGBLMintPrice() external view returns (uint256) {
        TNGBLMintingStats memory stats = _tngblMintingStats;
        if (stats.tngblValue == 0) return 0;
        return (stats.usdrMinted * 1e27) / stats.tngblValue;
    }

    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function resetMintingStats(uint256 tngblValue, uint256 usdrMinted)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        _tngblMintingStats.tngblValue = tngblValue;
        _tngblMintingStats.usdrMinted = usdrMinted;
    }

    function scaleFromUnderlying(uint256 amount)
        external
        view
        returns (uint256)
    {
        return _scaleFromUnderlying(amount);
    }

    function scaleToUnderlying(uint256 amount) external view returns (uint256) {
        return _scaleToUnderlying(amount);
    }

    function setFees(uint256 depositFee_, uint256 withdrawalFee_)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        depositFee = depositFee_;
        withdrawalFee = withdrawalFee_;
    }

    function setLowerTNGBLMintingThreshold(uint8 threshold)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        require(threshold <= 100, "invalid threshold");
        lowerTNGBLMintingThreshold = threshold;
    }

    function setTNGBLMultiplier(uint16 multiplier)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        tngblMultiplier = multiplier;
    }

    function swapToPromissory(uint256 amountIn, address to)
        external
        whenNotPaused
        returns (uint256)
    {
        (address promissory, uint256 amountOut) = _preparePromissoryWithdrawal(
            amountIn
        );
        IMintableERC20(promissory).mint(to, amountOut);
        return amountOut;
    }

    function swapToTNGBL(
        uint256 amountIn,
        uint256 amountOutMin,
        address to
    ) external whenNotPaused returns (uint256) {
        (
            address treasury,
            address tngbl,
            uint256 amountOut
        ) = _prepareTNGBLWithdrawal(amountIn);
        require(amountOut >= amountOutMin, "insufficient output amount");
        _updateTNGBLMintingStats(-int256(amountOut), -int256(amountIn));
        ITreasury(treasury).withdraw(tngbl, amountOut, to);
        return amountOut;
    }

    function swapToUnderlying(uint256 amountIn, address to)
        external
        whenNotPaused
        returns (uint256)
    {
        (
            address treasury,
            address underlying,
            uint256 amountOut
        ) = _prepareUnderlyingWithdrawal(amountIn);
        ITreasury(treasury).withdraw(underlying, amountOut, to);
        return amountOut;
    }

    function swapFromTNGBL(
        uint256 amountIn,
        uint256 amountOutMin,
        address to
    ) external whenNotPaused returns (uint256 amountOut) {
        (
            address treasury,
            address tngbl,
            address tngblOracle,
            address usdr,
            address staking
        ) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(
                        TREASURY_ADDRESS,
                        TNGBL_ADDRESS,
                        TNGBL_ORACLE_ADDRESS,
                        USDR_ADDRESS,
                        STAKING_ADDRESS
                    )
                ),
                (address, address, address, address, address)
            );
        IERC20(tngbl).safeTransferFrom(msg.sender, treasury, amountIn);
        uint256 multiplier;
        {
            // check backing
            uint256 usdrMarketCap = IStaking(staking).usdrMarketCap() * 1e9;
            {
                (
                    uint256 stable,
                    uint256 rwa,
                    ,
                    uint256 liquidity,
                    uint256 debt
                ) = ITreasury(treasury).getTreasuryValue();
                uint256 backing = stable + rwa + liquidity;
                if (debt < backing) {
                    unchecked {
                        multiplier = getTNGBLMultiplier(
                            usdrMarketCap,
                            backing - debt
                        );
                    }
                }
            }
            require(multiplier > 0, "insufficient backing");
            uint256 quote = IPriceOracle(tngblOracle).quote(1e18);
            uint8 tngblDecimals = IERC20Metadata(tngbl).decimals();
            require(
                (usdrMarketCap *
                    uint256(100 - lowerTNGBLMintingThreshold) *
                    multiplier *
                    quote) /
                    (10**(tngblDecimals + 4)) >=
                    amountIn,
                "TNGBL minting exhausted"
            );
            // calculate output amount based on current backing
            amountOut = _applyFee(
                _scaleAmount((quote * 100) / multiplier, tngblDecimals, 9),
                depositFee
            );
        }
        require(amountOut >= amountOutMin, "insufficient output amount");
        IUSDR(usdr).mint(to, amountOut);
        _checkTNGBLToUSDRMarketCapRatio();
        _updateTNGBLMintingStats(
            int256((amountIn * 100) / multiplier),
            int256(amountOut)
        );
    }

    function swapFromUnderlying(uint256 amountIn, address to)
        external
        whenNotPaused
        returns (uint256 amountOut)
    {
        (address treasury, address usdr, address underlying) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(TREASURY_ADDRESS, USDR_ADDRESS, UNDERLYING_ADDRESS)
            ),
            (address, address, address)
        );
        IERC20(underlying).safeTransferFrom(
            msg.sender,
            address(this),
            amountIn
        );
        IERC20(underlying).approve(treasury, amountIn);
        ITreasury(treasury).deposit(underlying, amountIn);
        amountOut = _applyFee(_scaleFromUnderlying(amountIn), depositFee);
        IUSDR(usdr).mint(to, amountOut);
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function getTNGBLMultiplier(uint256 usdrMarketCapE18, uint256 stableBacking)
        public
        view
        returns (uint256 multiplier)
    {
        uint256 threshold = (usdrMarketCapE18 * lowerTNGBLMintingThreshold) /
            100;
        if (stableBacking > threshold) {
            multiplier = tngblMultiplier;
        }
    }

    function setAddressProvider(AddressProvider _addressProvider)
        public
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        AddressAccessor.setAddressProvider(_addressProvider);
        updateUnderlying();
    }

    function updateUnderlying() public onlyRole(DEFAULT_ADMIN_ROLE) {
        (address usdr, address underlying) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(USDR_ADDRESS, UNDERLYING_ADDRESS)
            ),
            (address, address)
        );
        uint8 usdrDecimals = ERC20(usdr).decimals();
        uint8 underlyingDecimals = ERC20(underlying).decimals();
        _scale = _computeScale(usdrDecimals, underlyingDecimals);
    }

    function _applyFee(uint256 amount, uint256 fee)
        private
        pure
        returns (uint256)
    {
        assembly {
            if iszero(iszero(fee)) {
                amount := sub(amount, div(mul(amount, fee), 10000))
            }
        }
        return amount;
    }

    function _checkTNGBLToUSDRMarketCapRatio() private view {
        (address treasury, address staking) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(TREASURY_ADDRESS, STAKING_ADDRESS)
            ),
            (address, address)
        );
        (
            uint256 stable,
            uint256 rwa,
            ,
            uint256 liquidity,
            uint256 debt
        ) = ITreasury(treasury).getTreasuryValue();
        require(
            stable + rwa + liquidity - debt >=
                IStaking(staking).usdrMarketCap() *
                    lowerTNGBLMintingThreshold *
                    1e7,
            "insufficient backing"
        );
    }

    function _computeScale(uint8 usdrDecimals, uint8 underlyingDecimals)
        private
        pure
        returns (uint256 scale)
    {
        assembly {
            switch lt(usdrDecimals, underlyingDecimals)
            case true {
                scale := exp(10, sub(underlyingDecimals, usdrDecimals))
            }
            case false {
                scale := shl(128, exp(10, sub(usdrDecimals, underlyingDecimals)))
            }
        }
    }

    function _prepareTNGBLWithdrawal(uint256 amountIn)
        private
        returns (
            address treasury,
            address tngbl,
            uint256 amountOut
        )
    {
        address usdr;
        address oracle;
        (treasury, usdr, tngbl, oracle) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(
                    TREASURY_ADDRESS,
                    USDR_ADDRESS,
                    TNGBL_ADDRESS,
                    TNGBL_ORACLE_ADDRESS
                )
            ),
            (address, address, address, address)
        );
        IUSDR(usdr).burn(msg.sender, amountIn);
        uint8 tngblDecimals = IERC20Metadata(tngbl).decimals();
        amountOut = _applyFee(
            _scaleAmount(amountIn, 9, tngblDecimals),
            withdrawalFee
        );
        (
            uint256 stable,
            uint256 rwa,
            ,
            uint256 liquidity,
            uint256 debt
        ) = ITreasury(treasury).getTreasuryValue();
        require(
            stable + rwa + liquidity - debt <
                _scaleAmount(amountOut, tngblDecimals, 18),
            "sufficient backing"
        ); // can withdraw underlying or pDAI
        uint256 tngblBalance = IERC20(tngbl).balanceOf(treasury);
        uint256 tngblPrice = IPriceOracle(oracle).quote(1e18);
        amountOut = (amountOut * (10**tngblDecimals)) / tngblPrice;
        require(tngblBalance >= amountOut, "insufficient backing");
    }

    function _preparePromissoryWithdrawal(uint256 amountIn)
        private
        returns (address promissory, uint256 amountOut)
    {
        address treasury;
        address usdr;
        (treasury, usdr, promissory) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(TREASURY_ADDRESS, USDR_ADDRESS, PROMISSORY_ADDRESS)
            ),
            (address, address, address)
        );
        IUSDR(usdr).burn(msg.sender, amountIn);
        uint8 promissoryDecimals = IERC20Metadata(promissory).decimals();
        amountOut = _applyFee(
            _scaleAmount(amountIn, 9, promissoryDecimals),
            withdrawalFee
        );
        (
            uint256 stable,
            uint256 rwa,
            ,
            uint256 liquidity,
            uint256 debt
        ) = ITreasury(treasury).getTreasuryValue();
        require(
            stable + rwa + liquidity - debt >=
                _scaleAmount(amountOut, promissoryDecimals, 18),
            "insufficient backing"
        );
    }

    function _prepareUnderlyingWithdrawal(uint256 amountIn)
        private
        returns (
            address treasury,
            address underlying,
            uint256 amountOut
        )
    {
        address usdr;
        (treasury, usdr, underlying) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(TREASURY_ADDRESS, USDR_ADDRESS, UNDERLYING_ADDRESS)
            ),
            (address, address, address)
        );
        IUSDR(usdr).burn(msg.sender, amountIn);
        amountOut = _applyFee(_scaleToUnderlying(amountIn), withdrawalFee);
    }

    function _scaleAmount(
        uint256 amount,
        uint8 fromDecimals,
        uint8 toDecimals
    ) private pure returns (uint256) {
        assembly {
            switch lt(fromDecimals, toDecimals)
            case true {
                amount := mul(amount, exp(10, sub(toDecimals, fromDecimals)))
            }
            case false {
                if gt(fromDecimals, toDecimals) {
                    amount := div(amount, exp(10, sub(fromDecimals, toDecimals)))
                }
            }
        }
        return amount;
    }

    function _scaleFromUnderlying(uint256 amount)
        private
        view
        returns (uint256 result)
    {
        uint256 scale = _scale;
        assembly {
            switch iszero(scale)
            case true {
                result := amount
            }
            case false {
                switch gt(scale, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
                case true {
                    result := mul(amount, shr(128, scale))
                }
                case false {
                    result := div(amount, scale)
                }
            }
        }
    }

    function _scaleToUnderlying(uint256 amount)
        private
        view
        returns (uint256 result)
    {
        uint256 scale = _scale;
        assembly {
            switch iszero(scale)
            case true {
                result := amount
            }
            case false {
                switch gt(scale, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
                case true {
                    result := div(amount, shr(128, scale))
                }
                case false {
                    result := mul(amount, scale)
                }
            }
        }
    }

    function afterBurnTNGBL(uint256 amount, uint256 tngblPrice) external {
        require(
            msg.sender == addressProvider.getAddress(TREASURY_ADDRESS),
            "caller is not treasury"
        );
        if (amount == 0) {
            delete _tngblMintingStats;
        } else {
            int256 usdr = int256(_tngblMintingStats.usdrMinted);
            int256 tngbl = int256(_tngblMintingStats.tngblValue);
            if (int256(amount) >= tngbl) {
                delete _tngblMintingStats;
            } else {
                int256 tngblUpdated = tngbl - int256(amount);
                int256 usdrUpdated = (int256(tngblPrice) * tngblUpdated) / 1e27;
                _updateTNGBLMintingStats(-int256(amount), usdrUpdated - usdr);
            }
        }
    }

    function _updateTNGBLMintingStats(int256 tngblIn, int256 usdrOut) private {
        TNGBLMintingStats memory stats = _tngblMintingStats;
        if (tngblIn < 0 && stats.tngblValue < uint256(-tngblIn)) {
            stats.tngblValue = 0;
        } else {
            stats.tngblValue = uint256(int256(stats.tngblValue) + tngblIn);
        }
        if (
            stats.tngblValue == 0 ||
            (usdrOut < 0 && stats.usdrMinted < uint256(-usdrOut))
        ) {
            stats.usdrMinted = 0;
        } else {
            stats.usdrMinted = uint256(int256(stats.usdrMinted) + usdrOut);
        }
        _tngblMintingStats = stats;
    }
}
