/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

import '@itb/quant-common/contracts/solidity8/ITBContract.sol';
import './interfaces/IRToken.sol';
import './interfaces/IAssetRegistry.sol';
import './interfaces/IMain.sol';
import './interfaces/IBasketHandler.sol';
import './interfaces/IFurnace.sol';
import './libraries/Fixed.sol';

/// @title PositionManager for Reserve
/// @author IntoTheBlock Corp
contract PositionManager is ITBContract {
    using FixLib for uint192;

    struct PositionConfig {
        address rtoken;
        address basket_handler;
        address asset_registry;
        address furnace;
    }

    PositionConfig public positionConfig;

    event Mint(address indexed caller, address[] tokens, uint[] amounts, uint lpt_change);
    event Redeem(address indexed caller, address[] tokens, uint[] amounts, uint lpt_change);

    event Assemble(address indexed caller, address[] tokens, uint[] amounts, uint lpt_change);
    event Disassemble(address indexed caller, address[] tokens, uint[] amounts, uint lpt_change);
    event UpdatePositionConfig(address indexed caller, address main);

    /// @param _executors Executor addresses
    /// @param _wnative Wrapped native token address
    constructor(address[] memory _executors, address payable _wnative, address _main) ITBContract(_executors, _wnative) {
        updatePositionConfig(_main);
    }

    modifier hasConfig() {
        require(positionConfig.rtoken != address(0), 'A3'); // position_config is missing
        _;
    }

    function _percentageAmount(uint _amount, uint _percentage) internal pure returns (uint) {
        return (_amount * _percentage) / 1e18;
    }

    function updatePositionConfig(address _main) public onlyOwner {
        positionConfig = PositionConfig({
            rtoken: address(IMain(_main).rToken()),
            basket_handler: address(IMain(_main).basketHandler()),
            asset_registry: address(IMain(_main).assetRegistry()),
            furnace: address(IMain(_main).furnace())
        });
        emit UpdatePositionConfig(msg.sender, _main);
    }

    function VERSION() external pure returns (string memory) {
        return '3.0.0';
    }

    function getPositionAssets() public view returns (address[] memory) {
        (address[] memory erc20s, ) = IBasketHandler(positionConfig.basket_handler).quote(1, FLOOR);
        return erc20s;
    }

    function basketsToRtoken(uint _baskets_amount) public view returns(uint) {
        address rtokenAddress = positionConfig.rtoken;
        uint supply = IERC20(rtokenAddress).totalSupply();
        uint192 basketsNeeded = IRToken(rtokenAddress).basketsNeeded();

        return supply > 0 
            ? _safeWrap(_baskets_amount).muluDivu(supply, basketsNeeded, FLOOR) 
            : _baskets_amount;
    }

    function getAvailableRTokenOut() public view returns(uint) {
        uint available_issuance = IRToken(positionConfig.rtoken).issuanceAvailable();
        if (available_issuance == 0)
            return 0;

        address[] memory tokens;
        uint[] memory amountsRequiredPer1Token;
        uint maxMintableBasket = type(uint).max;

        (tokens, amountsRequiredPer1Token) = IBasketHandler(positionConfig.basket_handler).quote(1e18, CEIL);

        for (uint i = 0; i < tokens.length; ++i) {
            uint maxMintablePerToken = _balance(tokens[i]) * 1e18 / amountsRequiredPer1Token[i];
            if (maxMintablePerToken < maxMintableBasket) {
                maxMintableBasket = maxMintablePerToken;
            }
        }
        uint max_by_balance = basketsToRtoken(maxMintableBasket);

        return available_issuance < max_by_balance ? available_issuance : max_by_balance;
    }

    function mint(uint _rtoken_out) public onlyExecutor hasConfig returns (uint48 nonce, address[] memory tokens, uint[] memory amounts_in) {
        PositionConfig memory c = positionConfig;
        tokens = getPositionAssets();
        uint[] memory balance_before = new uint[](tokens.length);
        for (uint i = 0; i < tokens.length; i++)
            balance_before[i] = _balance(tokens[i]);

        nonce = IBasketHandler(c.basket_handler).nonce();
        IRToken(c.rtoken).issue(_rtoken_out);

        amounts_in = new uint[](tokens.length);
        for (uint i = 0; i < tokens.length; i++)
            amounts_in[i] = balance_before[i] - _balance(tokens[i]);

        emit Mint(msg.sender, tokens, amounts_in, _rtoken_out);
    }

    function redeem(uint _rtoken_in, uint[] memory _min_outs) public onlyExecutor hasConfig returns (address[] memory tokens, uint[] memory coins_out) {
        tokens = getPositionAssets();
        uint[] memory balance_before = new uint[](tokens.length);
        for (uint i = 0; i < tokens.length; i++)
            balance_before[i] = _balance(tokens[i]);

        IRToken(positionConfig.rtoken).redeem(_rtoken_in);

        coins_out = new uint[](tokens.length);
        for (uint i = 0; i < tokens.length; i++) {
            coins_out[i] = _balance(tokens[i]) - balance_before[i];
            require(coins_out[i] >= _min_outs[i], "Not enough out");
        }

        emit Redeem(msg.sender, tokens, coins_out, _rtoken_in);
    }

    // @dev should mint as much as possible unless _max_rtoken_out is not 0, in which case it should mint as much as possible up to _max_rtoken_out
    function assemble(uint _max_rtoken_out, uint _min_rtoken_out) public onlyExecutor hasConfig returns (uint rtoken_out) {
        IFurnace(positionConfig.furnace).melt(); // Needed to update supply and correctly estimate min out

        if (_max_rtoken_out == 0)
            _max_rtoken_out = type(uint).max;
        uint available_rtoken_out = getAvailableRTokenOut();
        if (available_rtoken_out == 0)
            return 0;
        rtoken_out = available_rtoken_out < _max_rtoken_out ? available_rtoken_out : _max_rtoken_out;
        require(rtoken_out >= _min_rtoken_out, "Not enough out");

        (, address[] memory tokens, uint[] memory amounts_in) = mint(rtoken_out);

        emit Assemble(msg.sender, tokens, amounts_in, rtoken_out);
    }

    function disassemble(uint _percentage, uint[] memory _min_outs) public onlyExecutor returns (uint[] memory coins_out) {
        address[] memory tokens = getPositionAssets();

        address rtoken = positionConfig.rtoken;
        uint to_redeem = _percentageAmount(_balance(rtoken), _percentage);
        if (to_redeem == 0)
            return new uint[](tokens.length);

        (, coins_out) = redeem(to_redeem, _min_outs);

        emit Disassemble(msg.sender, tokens, coins_out, to_redeem);
    }

    /// @notice Only executor. Full disassemble by configuration with min outs
    /// @param min_coins_out Minimum amount of coins to receive
    function fullDisassemble(uint[] memory min_coins_out) external onlyExecutor hasConfig returns (uint[] memory) {
        return disassemble(1e18, min_coins_out);
    }

    /// @dev only when under collateralized, otherwise will prob result in loss of funds
    function redeemCustom(uint _rtoken_in, uint48[] memory _basket_nonces, uint192[] memory _portions, address[] memory _expected_tokens_out, uint[] memory _min_outs) external onlyOwner hasConfig returns (uint[] memory coins_out) {
        uint[] memory balance_before = new uint[](_expected_tokens_out.length);
        for (uint i = 0; i < _expected_tokens_out.length; i++)
            balance_before[i] = _balance(_expected_tokens_out[i]);

        IRToken(positionConfig.rtoken).redeemCustom(address(this), _rtoken_in, _basket_nonces, _portions, _expected_tokens_out, _min_outs);

        coins_out = new uint[](_expected_tokens_out.length);
        for (uint i = 0; i < _expected_tokens_out.length; i++)
            coins_out[i] = _balance(_expected_tokens_out[i]) - balance_before[i];

        emit Redeem(msg.sender, _expected_tokens_out, coins_out, _rtoken_in);
    }
}
