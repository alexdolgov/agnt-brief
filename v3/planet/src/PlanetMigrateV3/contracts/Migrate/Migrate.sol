pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

import "./Dependencies.sol";

/**
@title Planet Migrate V3
@author Planet
*/

contract PlanetMigrateV3 is ReentrancyGuard{
    using SafeERC20 for IERC20;
    address internal immutable oneInchRouter; // Router for all the swaps to go through
    address internal immutable WBNB; // BNB address
    address public farmV3;
    address public owner;

    uint256 internal constant minimumAmount = 1000; // minimum number of tokens for the transaction to go through
    uint256 public pidAquaBtcb;
    uint256 public pidGammaBtcb;
    uint256 public minAddLiquidity; // minimum percentage of used tokens when calling addLiquidity

    event TokenReturned(address token, uint256 amount); // emitted when any pending tokens left with the contract after a function call are sent back to the user
    event SetFarmV3(address _farmV3);
    event SetPidAquaBtcb(uint256 _pidAquaBtcb);
    event SetPidGammaBtcb(uint256 _pidGammaBtcb);
    event SetMinAddLiquidity(uint256 _minAddLiquidity);
    event SetOwner(address _owner);

    error propogateError();

    constructor(address _oneInchRouter, address _WBNB, address _farmV3, uint256 _pidAquaBtcb, uint256 _pidGammaBtcb,  uint256 _minAddLiquidity) {
        // Safety checks to ensure WBNB token address
        IWBNB(_WBNB).deposit{value: 0}();
        IWBNB(_WBNB).withdraw(0);
        WBNB = _WBNB;

        oneInchRouter = _oneInchRouter;
        farmV3 = _farmV3;
        pidAquaBtcb = _pidAquaBtcb;
        pidGammaBtcb = _pidGammaBtcb;
        minAddLiquidity = _minAddLiquidity;
    }
    
    function migrateAquaBnbToAquaBtcb (address _pair, uint256 _withdrawAmount, address _desiredPair, bytes calldata _dataToken1, address _router, uint256 _lockTimeIndex, uint256 _minWithdrawToken0, uint256 _minWithdrawToken1) external nonReentrant{
        migrate(_pair, _withdrawAmount, _desiredPair, _dataToken1, _router, _minWithdrawToken0, _minWithdrawToken1);
        
        uint256 wantAmt = IERC20(_desiredPair).balanceOf(address(this));
        address _farmV3 = farmV3;
        _approveTokenIfNeeded(_desiredPair, _farmV3);
        IPlanetFarmV3(_farmV3).deposit(msg.sender, wantAmt, pidAquaBtcb, _lockTimeIndex);
    }

    function migrateGammaBnbToGammaBtcb (address _pair, uint256 _withdrawAmount, address _desiredPair, bytes calldata _dataToken1, address _router, uint256 _lockTimeIndex, uint256 _minWithdrawToken0, uint256 _minWithdrawToken1) external nonReentrant{
        migrate(_pair, _withdrawAmount, _desiredPair, _dataToken1, _router, _minWithdrawToken0, _minWithdrawToken1);
        
        uint256 wantAmt = IERC20(_desiredPair).balanceOf(address(this));
        address _farmV3 = farmV3;
        _approveTokenIfNeeded(_desiredPair, _farmV3);
        IPlanetFarmV3(_farmV3).deposit(msg.sender, wantAmt, pidGammaBtcb, _lockTimeIndex);
    }

    function migrate(address _pair, uint256 _withdrawAmount, address _desiredPair, bytes calldata _dataToken1, address _router, uint256 _minWithdrawToken0, uint256 _minWithdrawToken1) internal {
        require(_withdrawAmount >= minimumAmount, 'Planet: Insignificant withdraw amount');

        // user has to approve old LP token (GAMMA-BNB, AUQA-BNB)
        IERC20(_pair).safeTransferFrom(msg.sender, address(this), _withdrawAmount);
        _removeLiquidity(_pair, _minWithdrawToken0, _minWithdrawToken1);

        IUniswapV2Pair pair = IUniswapV2Pair(_pair);
        IUniswapV2Pair desiredPair = IUniswapV2Pair(_desiredPair);
        address[] memory path = new address[](4);
        path[0] = pair.token0();
        path[1] = pair.token1();
        path[2] = desiredPair.token0();
        path[3] = desiredPair.token1();

        _approveTokenIfNeeded(path[1], address(oneInchRouter));
        _swapViaOneInch(path[1], _dataToken1);

        _approveTokenIfNeeded(path[2], address(_router));
        _approveTokenIfNeeded(path[3], address(_router));
        uint256 lp2Amt = IERC20(path[2]).balanceOf(address(this));
        uint256 lp3Amt = IERC20(path[3]).balanceOf(address(this));
        uint256 _minAddLiquidity = minAddLiquidity;

        IPlanetRouter(_router).addLiquidity(path[2], path[3], lp2Amt, lp3Amt, (lp2Amt * _minAddLiquidity)/10000, (lp3Amt * _minAddLiquidity)/10000, msg.sender, block.timestamp+300);

        _returnAssets(path); // function _returnAssets also takes care of withdrawing WBNB and sending it to the user as BNB
    }

    // removes liquidity from the pair by burning LP pair tokens of the input address 
    function _removeLiquidity(address _pair, uint256 _minWithdrawToken0, uint256 _minWithdrawToken1) private {
        uint256 amount0;
        uint256 amount1;

        IERC20(_pair).safeTransfer(_pair, IERC20(_pair).balanceOf(address(this)));
        (amount0, amount1) = IUniswapV2Pair(_pair).burn(address(this));

        require(amount0 >= _minWithdrawToken0, "UniswapV2Router: INSUFFICIENT_A_AMOUNT");
        require(amount1 >= _minWithdrawToken1, "UniswapV2Router: INSUFFICIENT_B_AMOUNT");
    }

    // provides allowance for the spender to access the token when allowance is not already given
    function _approveTokenIfNeeded(address _token, address _spender) private {
        if (IERC20(_token).allowance(address(this), _spender) == 0) {
            IERC20(_token).safeApprove(_spender, type(uint).max);
        }
    }

    // Our main swap function call. We call the aggregator contract with our fed data. If we get an error we revert and return the error result. 
    function _swapViaOneInch(address _inputToken, bytes memory _callData) private {
        
        _approveTokenIfNeeded(_inputToken, address(oneInchRouter));

        (bool success, bytes memory retData) = oneInchRouter.call(_callData);

        propagateError(success, retData, "1inch");

        require(success, "calling 1inch got an error");
    }

    // Error reporting from our call to the aggrator contract when we try to swap. 
    function propagateError(
        bool success,
        bytes memory data,
        string memory errorMessage
        ) public pure {
        // Forward error message from call/delegatecall
        if (!success) {
            if (data.length == 0) revert propogateError();
            assembly {
                revert(add(32, data), mload(data))
            }
        }
    }

    // Returns any pending assets left with the contract after a swap, zapIn or ZapOut back to the user
    function _returnAssets (address[] memory _tokens) private {
        uint256 balance;
        address  _wbnb = WBNB;
        for (uint256 i; i < 4; ) {
            balance = IERC20(_tokens[i]).balanceOf(address(this));
            if (balance > 0) {
                if (_tokens[i] == _wbnb) {
                    IWBNB(_wbnb).withdraw(balance);
                    (bool success,) = msg.sender.call{value: balance}(new bytes(0));
                    require(success, 'Planet: BNB transfer failed');
                    emit TokenReturned(_tokens[i], balance);
                } else {
                    IERC20(_tokens[i]).safeTransfer(msg.sender, balance);
                    emit TokenReturned(_tokens[i], balance);
                }
            }

            unchecked{
                i++;
            }
        }
    }

    function setFarmV3(address _farmV3) external {
        require((owner == msg.sender), "onlyOwner");
        farmV3 = _farmV3;
        emit SetFarmV3(_farmV3);
    }

    function setPidAquaBtcb(uint256 _pidAquaBtcb) external {
        require((owner == msg.sender), "onlyOwner");
        pidAquaBtcb = _pidAquaBtcb;
        emit SetPidAquaBtcb(_pidAquaBtcb);
    }

    function setPidGammaBtcb(uint256 _pidGammaBtcb) external {
        require((owner == msg.sender), "onlyOwner");
        pidGammaBtcb = _pidGammaBtcb;
        emit SetPidGammaBtcb(_pidGammaBtcb);
    }

    function setMinAddLiquidity(uint256 _minAddLiquidity) external {
        require((owner == msg.sender), "onlyOwner");
        minAddLiquidity = _minAddLiquidity;
        emit SetMinAddLiquidity(_minAddLiquidity);
    }

    function setOwner(address _owner) external {
        require((owner == msg.sender), "onlyOwner");
        owner = _owner;
        emit SetOwner(_owner);
    }


    // enabling the contract to receive BNB
    receive() external payable {
        assert(msg.sender == WBNB);
    }

    // check front-running possibility in burn and add liqudiity
}