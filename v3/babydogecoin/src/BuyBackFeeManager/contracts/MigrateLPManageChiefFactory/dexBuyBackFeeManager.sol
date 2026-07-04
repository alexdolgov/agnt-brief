//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "./utils/IBabyDogePair.sol";
import "./utils/IBabyDogeRouter.sol";

contract BuyBackFeeManager is AccessControl {
    modifier onlyLPGuardian {
        require(LPGuardian[msg.sender] == true, "Only LP Guardian allowed");
        _;
    }

    event PairFailure(address pair, bytes err);
    event RemoveLiquidityFailure(bytes);
    event SwapFailure(bytes err, address[] path);

    event BuyBackAllocations(uint256 buyBack0, uint256 buyBack1);
    event BuyBackTokensAddresses(address, address);
    event BurnedBuyback(uint256 buyBack0, uint256 buyBack1);
    event NewRewardPerSecond(uint256);
    event NewRewardPerSecondPerLP(uint256);
    event NewLpBatchNumber(uint256);
    event NewLPGuardian(address);
    event RevokedLPGuardian(address);

    event NewLP (
        address LPGuardian,
        address LPTokenAddress,
        address[] LPTokenPath1,
        address[] LPTokenPath2
    );

    event ReplacedLP (
        address LPGuardian,
        address LPTokenAddress,
        address[] LPTokenPath1,
        address[] LPTokenPath2
    );

    bytes32 internal constant GOVERNANCE_ROLE = keccak256("GOVERNANCE_ROLE");

    address public router;
    address public WETH;
    address public stableCoin;
    address public buyBackCoin0;
    address public buyBackCoin1;

    uint256 public toBuyBackCoin0Percent;
    uint256 public buyBackAmount0;
    uint256 public buyBackAmount1;

    uint256 public lastLpFullUnwrapTime;
    uint256 public timeToBurn;
    uint256 public lpUnwrapStartingIndex;
    uint256 public rewardPerSecond;
    uint256 public rewardPerSecondPerLP;
    uint256 public lpBatchNumber = 100;

    bool public instantSwapToStable = true;
    bool public hasBurned = true;

    // LP => TokenA <- True / TokenB <- False => Path to WETH
    mapping(address => mapping(bool => address[])) public lpTokenUnwrapPath;
    mapping(address => bool) public LPGuardian;
    address[] public lpTokenToUnwrap;

    /*
     * Params
     * address _WETH - WETH/WBNB address
     * address _router - Uniswap/Pancakeswap router address
     * address _stableCoin - Address of stablecoin to which will be swapped part of WETH/WBNB
     * address _buyBackCoin0 - Address of buyback coin to which will be swapped part of WETH/WBNB
     * address _buyBackCoin1 - Address of buyback coin to which will be swapped part of WETH/WBNB
     * uint256 _toBuyBackCoin0Percent - Share of WETH/WBNB that will be converted to buy back token #1.
     *** the rest will go to buyback token #2
     * in basis points (75% == 7500)
     */
    constructor(
        address _WETH,
        address _router,
        address _stableCoin,
        address _buyBackCoin0,
        address _buyBackCoin1,
        uint256 _toBuyBackCoin0Percent,
        uint256 _rewardPerSecond,
        uint256 _rewardPerSecondPerLP
    ) {
        WETH = _WETH;
        router = _router;
        stableCoin = _stableCoin;
        toBuyBackCoin0Percent = _toBuyBackCoin0Percent;
        buyBackCoin0 = _buyBackCoin0;
        buyBackCoin1 = _buyBackCoin1;
        rewardPerSecond = _rewardPerSecond;
        rewardPerSecondPerLP = _rewardPerSecondPerLP;

        lastLpFullUnwrapTime = block.timestamp;

        require(
            _toBuyBackCoin0Percent <= 10000,
            "Allocations Below 10000"
        );

        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _setupRole(GOVERNANCE_ROLE, _msgSender());
    }

    //allows contract to receive ETH
    receive() external payable {}


    /*
     * Params
     * address _lpAddress - Address of lp token contract
     * address[] calldata _pathTokenA - Path for swapping tokenA to WETH/WBNB
     * address[] calldata _pathTokenB - Path for swapping tokenB to WETH/WBNB
     *
     * Function checks paths and adds them to internal storage
     */
    function addLP(
        address _lpAddress,
        address[] calldata _pathTokenA,
        address[] calldata _pathTokenB
    ) external onlyLPGuardian {
        require(
            lpTokenUnwrapPath[_lpAddress][true].length == 0 &&
                lpTokenUnwrapPath[_lpAddress][false].length == 0,
            "LP already added"
        );
        lpTokenToUnwrap.push(_lpAddress);
        if (_pathTokenA.length > 0) {
            lpTokenUnwrapPath[_lpAddress][true] = _pathTokenA;
        }
        if (_pathTokenB.length > 0) {
            lpTokenUnwrapPath[_lpAddress][false] = _pathTokenB;
        }

        emit NewLP (
            msg.sender,
            _lpAddress,
            _pathTokenA,
            _pathTokenB
        );
    }


    /*
     * Params
     * uint256 _lpTokenIndex - Array index of the token you want to replace
     * address _lpAddress - Address of lp token contract
     * address[] calldata _pathTokenA - Path for swapping tokenA to WETH/WBNB
     * address[] calldata _pathTokenB - Path for swapping tokenB to WETH/WBNB
     *
     * Function checks paths and replaces lp token info in internal storage
     */
    function replaceLP(
        uint256 _lpTokenIndex,
        address _lpAddress,
        address[] calldata _pathTokenA,
        address[] calldata _pathTokenB
    ) external onlyLPGuardian {
        require(
            lpTokenUnwrapPath[_lpAddress][true].length != 0 ||
            lpTokenUnwrapPath[_lpAddress][false].length != 0,
            "LP is not added"
        );

        address oldLpTokenAddress = lpTokenToUnwrap[_lpTokenIndex];
        if(oldLpTokenAddress != _lpAddress) {
            delete lpTokenUnwrapPath[oldLpTokenAddress][true];
            delete lpTokenUnwrapPath[oldLpTokenAddress][false];
        }

        lpTokenToUnwrap[_lpTokenIndex] = _lpAddress;
        if (_pathTokenA.length > 0) {
            lpTokenUnwrapPath[_lpAddress][true] = _pathTokenA;
        }
        if (_pathTokenB.length > 0) {
            lpTokenUnwrapPath[_lpAddress][false] = _pathTokenB;
        }

        emit ReplacedLP (
            msg.sender,
            _lpAddress,
            _pathTokenA,
            _pathTokenB
        );
    }


    /*
     * Params
     * uint256 _toBuyBackCoin0Percent - Percent of WETH/WBNB to be converted to Buy back coin #1
     *
     * Function updates percent of WETH/WBNB to be converted to
     * stablecoins and sent to burn wallet
     */
    function setAllocationSettings(
        uint256 _toBuyBackCoin0Percent
    ) external onlyRole(GOVERNANCE_ROLE) {
        require(
            _toBuyBackCoin0Percent <= 10000,
            "Has to be 10000"
        );

        toBuyBackCoin0Percent = _toBuyBackCoin0Percent;

        emit BuyBackAllocations(_toBuyBackCoin0Percent, 10000 - _toBuyBackCoin0Percent);
    }


    /*
     * Params
     * address user - Address of the user you want to appoint as LP Guardian
     *
     * Function adds LPGuardian rights to the user
     */
    function addLPGuardian(
        address user
    ) external onlyRole(GOVERNANCE_ROLE) {
        require(
            LPGuardian[user] == false,
            "Already appointed"
        );
        LPGuardian[user] = true;

        emit NewLPGuardian(user);
    }


    /*
     * Params
     * address user - Address of the user you want to revoke from LP Guardians list
     *
     * Function revokes LPGuardian rights from the user
     */
    function revokeLPGuardian(
        address user
    ) external onlyRole(GOVERNANCE_ROLE) {
        require(
            LPGuardian[user] == true,
            "Not LPGuardian"
        );
        LPGuardian[user] = false;

        emit RevokedLPGuardian(user);
    }


    /*
     * Params
     * uint256 _lpBatchNumber - Maximum number of LP tokens
     *** allowed during single unwrapTokens function execution
     *
     * Function sets different lpBatchNumber
     */
    function setLpBatchNumber(
        uint256 _lpBatchNumber
    ) external onlyRole(GOVERNANCE_ROLE) {
        require(
            _lpBatchNumber > 0 && _lpBatchNumber != lpBatchNumber,
            "Invalid value"
        );
        lpBatchNumber = _lpBatchNumber;

        emit NewLpBatchNumber(_lpBatchNumber);
    }


    /*
     * Params
     * address  _buyBackCoin0 - Token address that will be bought back using WETH/BNB
     * address _buyBackCoin1 - Token address that will be bought back using WETH/BNB
     *
     * Function changes the addresses of tokens that are bought back
     */
    function setBuybackTokens(address _buyBackCoin0, address _buyBackCoin1)
        external
        onlyRole(GOVERNANCE_ROLE)
    {
        buyBackCoin0 = _buyBackCoin0;
        buyBackCoin1 = _buyBackCoin1;

        emit BuyBackTokensAddresses(_buyBackCoin0, _buyBackCoin1);
    }


    /*
     * Params
     * uint256 _rewardPerSecond - Reward per second for swapToBuyBackAndBurn() function
     *
     * Rewards start accumulating starting from the end of 7 days after last full tokens unwrap.
     */
    function setRewardPerSecond(uint256 _rewardPerSecond)
        external
        onlyRole(GOVERNANCE_ROLE)
    {
        require(_rewardPerSecond != rewardPerSecond, "Already set");
        rewardPerSecond = _rewardPerSecond;
        emit NewRewardPerSecond(_rewardPerSecond);
    }


    /*
     * Params
     * uint256 _rewardPerSecondPerLP - Reward per second for unwrapTokens() function
     *
     * Rewards start accumulating starting from the end of 7 days after last full tokens unwrap.
     * Final reward depends on the number of LP tokens that need to be unwrapped during function call
     */
    function setRewardPerSecondPerLP(uint256 _rewardPerSecondPerLP)
        external
        onlyRole(GOVERNANCE_ROLE)
    {
        require(_rewardPerSecondPerLP != rewardPerSecondPerLP, "Already set");
        rewardPerSecondPerLP = _rewardPerSecondPerLP;
        emit NewRewardPerSecondPerLP(_rewardPerSecondPerLP);
    }


    /*
     * Function unwraps LP tokens in batches of 100 (lpBatchNumber).
     * Full LP tokens unwrap may be done once in 7 days
     * Function removes liquidity in exchange for lp tokens and swaps both tokens for WETH/WBNB
     */
    function unwrapTokens()
        external
    {
        uint256 _lastLpFullUnwrapTime = lastLpFullUnwrapTime;
        require(
            lpUnwrapStartingIndex != 0
            || _lastLpFullUnwrapTime + 7 days < block.timestamp,
            "Already unwrapped"
        );
        //gas saving
        address[] memory _lpTokenToUnwrap = lpTokenToUnwrap;
        uint256 _startingIndex = lpUnwrapStartingIndex;
        uint256 _endingIndex = _startingIndex + lpBatchNumber;
        if(_endingIndex >= _lpTokenToUnwrap.length) {
            _endingIndex = _lpTokenToUnwrap.length;
            lastLpFullUnwrapTime = block.timestamp;
            lpUnwrapStartingIndex = 0;
            hasBurned = false;
            timeToBurn = block.timestamp;
        } else {
            lpUnwrapStartingIndex = _endingIndex;
        }

        uint256 reward = (_endingIndex - _startingIndex)
            * rewardPerSecondPerLP
            * (block.timestamp - (_lastLpFullUnwrapTime + 7 days));

        require(msg.sender == tx.origin, "Only Wallet");
        for (
            uint256 current = _startingIndex;
            current < _endingIndex;
            current++
        ) {
            uint256 liquidity = IBabyDogePair(_lpTokenToUnwrap[current])
                .balanceOf(address(this));
            if (liquidity > 0) {
                // LP token is Stable coin of choice or WETH unwrap and swap
                address tokenA;
                try IBabyDogePair(_lpTokenToUnwrap[current])
                    .token0() returns(address _token) {
                    tokenA = _token;
                } catch (bytes memory _err) {
                    emit PairFailure(_lpTokenToUnwrap[current], _err);
                }

                address tokenB;
                try IBabyDogePair(_lpTokenToUnwrap[current])
                    .token1() returns(address _token) {
                    tokenB = _token;
                } catch (bytes memory _err) {
                    emit PairFailure(_lpTokenToUnwrap[current], _err);
                }

                if(tokenA == address(0) || tokenB == address(0)) {
                    continue;
                }

                IBabyDogePair(_lpTokenToUnwrap[current]).approve(
                    router,
                    liquidity
                );
                try IBabyDogeRouter(router).removeLiquidity(
                    tokenA,
                    tokenB,
                    liquidity,
                    0,
                    0,
                    address(this),
                    block.timestamp + 120
                ) {}
                catch (bytes memory _err) {
                    emit RemoveLiquidityFailure(_err);
                }

                if (
                    lpTokenUnwrapPath[_lpTokenToUnwrap[current]][true].length > 0
                ) {
                    swapTokens(
                        lpTokenUnwrapPath[_lpTokenToUnwrap[current]][true]
                    );
                }
                if (
                    lpTokenUnwrapPath[_lpTokenToUnwrap[current]][false].length >
                    0
                ) {
                    swapTokens(
                        lpTokenUnwrapPath[_lpTokenToUnwrap[current]][false]
                    );
                }
            }
        }

        uint256 newWETHBalance = IERC20(WETH).balanceOf(address(this)) -
            (buyBackAmount0 + buyBackAmount1);
        if(reward > newWETHBalance) {
            reward > newWETHBalance;
        }
        newWETHBalance -= reward;
        IERC20(WETH).transfer(msg.sender, reward);

        if(newWETHBalance > 0) {
            buyBackAmount0 += (newWETHBalance * toBuyBackCoin0Percent) / 10000;
            buyBackAmount1 += newWETHBalance - buyBackAmount0;
        }
    }

    /*
     * Params
     * address[] storage path - Path for swapping token to WETH/WBNB
     *
     * Function swaps full balance of token to WETH/WBNB
     * The first element of path is the input token, the last is the output token,
     * and any intermediate elements represent intermediate pairs to trade
     */
    function swapTokens(address[] storage path) internal {
        uint256 amountIn = IERC20(path[0]).balanceOf(address(this));
        IERC20(path[0]).approve(router, amountIn);

        try IBabyDogeRouter(router).getAmountsOut(amountIn, path)
        returns (uint256[] memory amounts) {
            address to = address(this);
            uint256 deadline = block.timestamp + 120; //2 minutes to complete transaction
            try IBabyDogeRouter(router)
                .swapExactTokensForTokensSupportingFeeOnTransferTokens(
                    amountIn,
                    amounts[path.length - 1],
                    path,
                    to,
                    deadline
            ) {} catch (bytes memory _err) {
                emit SwapFailure(
                    _err,
                    path
                );
            }
        } catch (bytes memory _err) {
            emit SwapFailure(
                _err,
                path
            );
        }



    }

    /*
     * Function swaps correct percent of WETH/WBNB balance to buyback coins
     * and sends these coins to buyback wallet
     * You can call this function only when LP tokens are fully unwrapped
     * Caller will receive WETH reward for each second since this function can be called.
     * LP tokens must be unwrapped first
     */
    function swapToBuyBackAndBurn() external {
        // Swap X amount to buyback token. Keep in the contract.
        uint256 WETHBalance = IERC20(WETH).balanceOf(address(this));
        require(WETHBalance > 0, "Nothing to swap. Unwrap first");

        require(
            lpUnwrapStartingIndex == 0
            && lastLpFullUnwrapTime + 7 days > block.timestamp,
            "Not Unwrapped yet"
        );

        require(hasBurned == false,"Already burned");
        hasBurned = true;

        uint256 rewardAmount = (block.timestamp - timeToBurn) * rewardPerSecond;
        if(rewardAmount > WETHBalance) {
            rewardAmount = WETHBalance;
        }
        IERC20(WETH).transfer(msg.sender, rewardAmount);
        WETHBalance -= rewardAmount;

        uint256 buyBackTokenAmount0;
        uint256 buyBackTokenAmount1;
        //gas saving
        uint256 _buyBackAmount0 = buyBackAmount0;
        uint256 _buyBackAmount1 = buyBackAmount1;
        _buyBackAmount0 = WETHBalance * _buyBackAmount0/(_buyBackAmount0 + _buyBackAmount1);
        _buyBackAmount1 = WETHBalance - _buyBackAmount0;

        if (buyBackCoin0 != address(0)) {
            IERC20(WETH).approve(router, _buyBackAmount0 + _buyBackAmount1);
            address[] memory path = new address[](2);
            path[0] = WETH;
            path[1] = buyBackCoin0;

            uint256[] memory amountOutMin = IBabyDogeRouter(router)
                .getAmountsOut(_buyBackAmount0, path);

            try IBabyDogeRouter(router).swapExactTokensForTokens(
                _buyBackAmount0,
                amountOutMin[1],
                path,
                0x000000000000000000000000000000000000dEaD,
                block.timestamp + 600
            ) returns (uint256[] memory amounts) {
                buyBackTokenAmount0 = amounts[1];
                buyBackAmount0 = 0;
            } catch (bytes memory _err) {
                emit SwapFailure(
                    _err,
                    path
                );
            }
        }

        if (buyBackCoin1 != address(0)) {
            address[] memory path = new address[](2);
            path[0] = WETH;
            path[1] = buyBackCoin1;

            uint256[] memory amountOutMin = IBabyDogeRouter(router)
                .getAmountsOut(_buyBackAmount1, path);

            try IBabyDogeRouter(router).swapExactTokensForTokens(
                _buyBackAmount1,
                amountOutMin[1],
                path,
                0x000000000000000000000000000000000000dEaD,
                block.timestamp + 600
            ) returns (uint256[] memory amounts) {
                buyBackTokenAmount1 = amounts[1];
                buyBackAmount1 = 0;
            } catch (bytes memory _err) {
                emit SwapFailure(
                    _err,
                    path
                );
            }
        }

        emit BurnedBuyback(buyBackTokenAmount0, buyBackTokenAmount1);
    }


    /*
     * Params
     * address payable _address - Address that will receive WETH/WBNB
     * uint256 amount - Amount of WETH/WBNB to receive
     *
     * Function withdraws any WETH/WBNB to specific address
     */
    function withdrawETH(address payable _address, uint256 amount)
        external
        onlyRole(GOVERNANCE_ROLE)
    {
        require(address(this).balance >= amount, "Not enough ETH");
        _address.transfer(amount);
    }

    /*
     * Params
     * address _address - Address that will receive ERC20
     * address tokenAddress - Address of ERC20 token contract
     * uint256 amount - Amount of ERC20 to receive
     *
     * Function withdraws any ERC20 tokens to specific address
     * Can't withdraw active LP tokens
     */
    function withdrawERC20(
        address _address,
        address tokenAddress,
        uint256 amount
    ) external onlyRole(GOVERNANCE_ROLE) {
        require(
            IERC20(tokenAddress).balanceOf(address(this)) >= amount,
            "Not enough ERC20"
        );

        require(
            lpTokenUnwrapPath[tokenAddress][true].length == 0 &&
            lpTokenUnwrapPath[tokenAddress][false].length == 0,
            "Can't withdraw LP tokens"
        );

        IERC20(tokenAddress).transfer(_address, amount);
    }
}
