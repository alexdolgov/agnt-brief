// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/IBabyDogeRouter.sol";
import "./interfaces/IBabyDogeFactory.sol";
import "./interfaces/IBabyDogePair.sol";
import "./interfaces/IBurnPortal.sol";
import "./interfaces/IWETH.sol";
import "./SafeOwnable.sol";

/*
 * @title Provides buy BabyDoge Token discount for BabyDoge burning
 * Leftover income tokens are collected on the contract
 */
contract BurnPortal is SafeOwnable, ReentrancyGuard, IBurnPortal {
    using EnumerableSet for EnumerableSet.AddressSet;

    struct Discount {
        // Discount amount in basis points, where 10_000 is 100% discount, which means purchase without fees
        uint16 discount;
        // Amount of BabyDoge tokens to burn to reach this discount
        uint112 burnAmount;
    }

    IBabyDogeRouter public immutable router;
    IBurnPortal public immutable oldBurnPortal;
    IWETH private immutable WETH;
    IERC20 public immutable bbdToken;
    address private constant DEAD_WALLET = 0x000000000000000000000000000000000000dEaD;

    bool public freePurchaseForEveryone = false;
    uint8 public babyDogeTokenTax = 10; //  10% BabyDoge tax
    uint256 private _totalBurned = 0;

    Discount[] public discounts;
    mapping(address => uint256) private _burnedAmount;
    EnumerableSet.AddressSet private approvedTokens; // Set of token addresses, approved to be TokenIn

    event BabyDogePurchase(
        address account,
        uint256 babyDogeAmount,
        address tokenIn
    );
    event NewDiscounts(Discount[]);
    event NewBabyDogeTokenTax(uint256);
    event FreePurchaseForEveryoneEnabled();
    event FreePurchaseForEveryoneDisabled();
    event TokenInApproved(address);
    event TokenInRemoved(address);
    event BabyDogeBurn(address account, uint256 amount);
    event TokensWithdrawal(address token, address account, uint256 amount);
    event BnbWithdrawal(address account, uint256 amount);

    error InvalidDiscount(uint256);


    /*
     * @param _oldBurnPortal Old BurnPortal address
     * @param _router BabyDoge router address
     * @param _bbdToken BabyDoge token address
     * @param _discounts Array of Discount structs, containing discount amount and burn amount to receive that discount
     */
    constructor(
        IBurnPortal _oldBurnPortal,
        IBabyDogeRouter _router,
        IERC20 _bbdToken,
        Discount[] memory _discounts
    ){
        require(address(_bbdToken) != address(0));
        oldBurnPortal = _oldBurnPortal;
        router = _router;
        WETH = IWETH(_router.WETH());
        _bbdToken.approve(address(_router), type(uint256).max);

        bbdToken = _bbdToken;

        _checkDiscounts(_discounts);
        for(uint i = 0; i < _discounts.length; i++) {
            discounts.push(_discounts[i]);
        }
    }


    /*
     * @notice Swaps BNB for BabyDoge token and sends them to msg.sender
     * @param amountOutMin Minimum amount of BabyDoge tokens to receive
     * @param path Swap path
     * @param deadline Deadline of swap transaction
     * @return amountOut Amount of BabyDoge tokens user has received
     */
    function buyBabyDogeWithBNB(
        uint256 amountOutMin,
        address[] calldata path,
        uint256 deadline
    ) external nonReentrant payable returns(uint256 amountOut){
        require(path[0] == address(WETH) && path.length == 2, "Invalid path");
        require(msg.value > 0, "0 amountIn");

        uint256 personalDiscount = getPersonalDiscount(msg.sender);
        require(personalDiscount > 0, "No discount");
        // calculating personal tax. `babyDogeTokenTax`% with 0% discount, 0% with 100% discount
        uint256 personalTax = babyDogeTokenTax * (10_000 - personalDiscount) / 10_000;
        uint256 amountIn = msg.value * (100 - personalTax) / 100;

        WETH.deposit{value : amountIn}();

        amountOut = _buyBabyDogeWithERC20(
            amountIn,
            amountOutMin,
            path,
            deadline
        );
    }


    /*
     * @notice Swaps ERC20 for BabyDoge token and sends them to msg.sender
     * @param amountIn Amount tokens to spend
     * @param amountOutMin Minimum amount of BabyDoge tokens to receive
     * @param path Swap path
     * @param deadline Deadline of swap transaction
     * @return amountOut Amount of BabyDoge tokens user has received
     */
    function buyBabyDogeWithERC20(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        uint256 deadline
    ) external nonReentrant returns(uint256 amountOut){
        // allow only WBNB -> BBD or Stable -> BBD or Stable -> WBNB -> BBD swaps
        require(
            (path.length == 2 && (path[0] == address(WETH) || approvedTokens.contains(path[0])))
            ||
            (path.length == 3 && path[1] == address(WETH) && approvedTokens.contains(path[0])),
            "Forbidden swap path"
        );

        IERC20(path[0]).transferFrom(msg.sender, address(this), amountIn);

        uint256 personalDiscount = getPersonalDiscount(msg.sender);
        require(personalDiscount > 0, "No discount");
        // calculating personal tax. `babyDogeTokenTax`% with 0% discount, 0% with 100% discount
        uint256 taxAmount = amountIn * babyDogeTokenTax / 100 * (10_000 - personalDiscount) / 10_000;
        uint256 amountInWithTax = amountIn  - taxAmount;

        amountOut = _buyBabyDogeWithERC20(
            amountInWithTax,
            amountOutMin,
            path,
            deadline
        );
    }


    /*
     * @notice Burns BabyDoge tokens by sending them to dead wallet
     * @param amount Amount of BabyDoge tokens to burn
     */
    function burnBabyDoge(uint256 amount) external {
        bbdToken.transferFrom(msg.sender, DEAD_WALLET, amount);
        _burnedAmount[msg.sender] += amount;
        _totalBurned += amount;

        emit BabyDogeBurn(msg.sender, amount);
    }


    /*
     * @notice Sets new discounts values
     * @param _discounts Array of Discount structs, containing discount amount and burn amount to receive that discount
     */
    function setDiscounts(Discount[] calldata _discounts) external onlyOwner {
        _checkDiscounts(_discounts);
        delete discounts;
        for(uint i = 0; i < _discounts.length; i++) {
            discounts.push(_discounts[i]);
        }

        emit NewDiscounts(_discounts);
    }


    /*
     * @notice Updates BabyDogeToken tax
     */
    function updateBabyDogeTokenTax() external {
        require(msg.sender == tx.origin || msg.sender == owner());
        IBabyDogeToken babyDoge = IBabyDogeToken(address(bbdToken));
        uint256 _babyDogeTokenTax = babyDoge._taxFee() + babyDoge._liquidityFee();
        require(babyDogeTokenTax != _babyDogeTokenTax, "Already set");
        require(_babyDogeTokenTax < 100, "Invalid tax");

        babyDogeTokenTax = uint8(_babyDogeTokenTax);

        emit NewBabyDogeTokenTax(_babyDogeTokenTax);
    }


    /*
     * @notice Allows everyone to purchase without fees
     */
    function enableFreePurchaseForEveryone() external onlyOwner {
        require(freePurchaseForEveryone != true, "Already set");
        freePurchaseForEveryone = true;

        emit FreePurchaseForEveryoneEnabled();
    }


    /*
     * @notice Disable free BabyDoge purchase for everyone. Now individual fees will work
     */
    function disableFreePurchaseForEveryone() external onlyOwner {
        require(freePurchaseForEveryone != false, "Already set");
        freePurchaseForEveryone = false;

        emit FreePurchaseForEveryoneDisabled();
    }


    /*
     * @notice Approves token to be swapped to BBD
     * @param token ERC20 token address
     */
    function approveTokenIn(address token) external onlyOwner {
        require(!approvedTokens.contains(token), "Already approved");
        approvedTokens.add(token);

        emit TokenInApproved(token);
    }


    /*
     * @notice Remove token from the list of approved tokens In
     * @param token ERC20 token address
     */
    function removeTokenIn(address token) external onlyOwner {
        require(approvedTokens.contains(token), "Not approved");
        approvedTokens.remove(token);

        emit TokenInRemoved(token);
    }


    /*
     * @notice Withdraws ERC20 token.
     * @param token IERC20 token address
     * @param account Address of receiver
     * @param amount Amount of tokens to withdraw
     */
    function withdrawERC20(
        IERC20 token,
        address account,
        uint256 amount
    ) external onlyOwner {
        token.transfer(account, amount);

        emit TokensWithdrawal(address(token), account, amount);
    }


    /*
     * @notice Withdraws BNB.
     * @param account Address of receiver
     * @param amount Amount of BNB to withdraw
     */
    function withdrawBNB(
        address account,
        uint256 amount
    ) external onlyOwner {
        (bool success, ) = account.call{value: amount}("");
        require(success, "Failed to send BNB");

        emit BnbWithdrawal(account, amount);
    }


    /*
     * @notice Returns the amount of total burned BabyDoge tokens for the specific account
     * @return Amount of total burned BabyDoge tokens. Takes past BurnPortal into account
     */
    function burnedAmount(address account) public view returns(uint256) {
        return oldBurnPortal.burnedAmount(account) + _burnedAmount[account];
    }


    /*
     * @notice Returns the amount of total burned BabyDoge tokens. Takes previous ly burned on past BurnPortal into account
     * @return Amount of total burned BabyDoge tokens. Takes past BurnPortal into account
     */
    function totalBurned() public view returns(uint256) {
        return oldBurnPortal.totalBurned() + _totalBurned;
    }


    /*
     * @notice View function go get discounts list
     * @return List or discounts
     */
    function getDiscounts() external view returns(Discount[] memory) {
        return discounts;
    }


    /*
     * @notice View function go get list or approved tokens
     * @return List or approved tokens
     */
    function getApprovedTokens() external view returns(address[] memory) {
        return approvedTokens.values();
    }


    /*
     * @notice View function go determine if token is approved to be swapped to BBD
     * @param token ERC20 token address
     * @return Is approved to be swapped to BBD?
     */
    function isApprovedTokenIn(address token) external view returns(bool) {
        return approvedTokens.contains(token);
    }


    /*
     * @notice View function go get personal discount
     * @return Discount in basis points where 10_000 is 100% discount = purchase without fee
     */
    function getPersonalDiscount(address account) public view returns(uint256) {
        if (freePurchaseForEveryone) {
            return 10_000;
        }
        uint256 numberOfDiscounts = discounts.length;

        int256 min = 0;
        int256 max = int256(numberOfDiscounts - 1);

        uint256 burnedTokens = burnedAmount(account);

        while (min <= max) {
            uint256 mid = uint256(max + min) / 2;

            if (
                burnedTokens == discounts[mid].burnAmount
                ||
                (burnedTokens > discounts[mid].burnAmount && (mid == numberOfDiscounts - 1))
                ||
                (burnedTokens > discounts[mid].burnAmount && (mid == 0 || burnedTokens < discounts[mid + 1].burnAmount))
            ) {
                return discounts[mid].discount;
            }

            if (discounts[mid].burnAmount > burnedTokens) {
                max = int256(mid) - 1;
            } else {
                min = int256(mid) + 1;
            }
        }

        return 0;
    }


    /*
     * @notice Swaps ERC20 for BabyDoge token
     * @param amountIn Amount tokens to spend
     * @param amountOutMin Minimum amount of BabyDoge tokens to receive
     * @param path Swap path
     * @param deadline Deadline of swap transaction
     * @return amountOut Amount of BabyDoge tokens user has received
     */
    function _buyBabyDogeWithERC20(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        uint256 deadline
    ) private returns(uint256 amountOut) {
        require(path[path.length - 1] == address(bbdToken), "Invalid path");
        if (IERC20(path[0]).allowance(address(this), address(router)) < amountIn) {
            IERC20(path[0]).approve(address(router), type(uint256).max);
        }

        (uint256[] memory amounts) = router.swapExactTokensForTokens(
            amountIn,
            0,
            path,
            address(this),
            deadline
        );

        amountOut = amounts[amounts.length - 1];
        bbdToken.transfer(msg.sender, amountOut);

        require(amountOut > amountOutMin, "Below amountOutMin");

        emit BabyDogePurchase(msg.sender, amountOut, path[0]);
    }


    /*
     * @notice Checks discounts array for validity
     */
    function _checkDiscounts(Discount[] memory _discounts) private pure {
        require(_discounts.length > 0, "No discount data");
        Discount memory prevDiscount = _discounts[0];
        if (_discounts[0].discount == 0 || _discounts[0].burnAmount == 0) {
            revert InvalidDiscount(0);
        }
        for(uint i = 1; i < _discounts.length; i++) {
            if (
                _discounts[i].discount == 0
                || prevDiscount.discount >= _discounts[i].discount
                || prevDiscount.burnAmount >= _discounts[i].burnAmount
            ) {
                revert InvalidDiscount(i);
            }
        }
    }
}


interface IBabyDogeToken {
    function _taxFee() external returns(uint256);
    function _liquidityFee() external returns(uint256);
}