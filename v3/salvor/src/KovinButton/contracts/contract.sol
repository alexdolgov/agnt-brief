// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

interface IPair {
    function getReserves() external view returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
}

contract KovinButton is Ownable {

    address public KOVIN = 0x694200a68B18232916353250955bE220e88c5cBB;
    address public NATIVE = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    address public USDC = 0xB97EF9Ef8734C71904D8002F8b6Bc66Dd9c48a6E;
    mapping(address => address) public treasury;
    address private treasuryKOVIN;
    address[] public tokens;
    mapping(address => address) public pairsToken;
    mapping(address => uint256) public entries;
    mapping(address => bool) public isActive;
    mapping(address => uint256) public tokenPrize;
    uint256 public startTime;
    uint256 public endTime;
    uint256 public duration = 90;
    address public winner;
    uint256 public amountKOVIN = 1000*10**18;
    address public lastPlayer;
    bool winnerPaid;

    constructor(){
        treasuryKOVIN = msg.sender;
        addToken(0x694200a68B18232916353250955bE220e88c5cBB, 0x96BbDb6811d47B1199D444D507De623a905D63f3, treasuryKOVIN); // KOVIN
        addToken(0xB97EF9Ef8734C71904D8002F8b6Bc66Dd9c48a6E, 0xf4003F4efBE8691B60249E6afbD307aBE7758adb, treasuryKOVIN); // USDC
        addToken(0x65378b697853568dA9ff8EaB60C13E1Ee9f4a654, 0x91B62FB52C9fdF27aD18BBe1c4a8fF52df6104CC, 0x90933F6A6ea303d2eAaecF85F04aC5fE9eAD802e); // HUSKY
        addToken(0x184ff13B3EBCB25Be44e860163A5D8391Dd568c1, 0x03a5888726667FfF1E753fc06B51Dd1245e7371a, treasuryKOVIN); // KIMBO
        addToken(0x2d0aFed89a6D6A100273Db377dBA7a32C739E314, 0xd0c522281Ec3c8018AA0ad8D5Ba575141CAddF52, treasuryKOVIN); // BIG
        addToken(0xB44B645b5058F7e393F3AE6Af58A4CEf67006196, 0xC9a1feA26AF11eB18056426cDc57e043D1274354, treasuryKOVIN); // STICK
        addToken(0x77776aB9495729E0939E9bADAf7E7c3312777777, 0x5C0C02045Ec0714D68E751D7828efac595c64660, 0xAa3CD210787C43A26135540Fcad8DC00Ad25112a); // WABBIT
        addToken(0x60781C2586D68229fde47564546784ab3fACA982, 0x3dAF1C6268362214eBB064647555438c6f365F96, treasuryKOVIN); // PNG
        addToken(0xFFFF003a6BAD9b743d658048742935fFFE2b6ED7, 0x9962Cf3ba621bEb96D3fA2614D24161A717ada71, treasuryKOVIN); // KET
        addToken(0x7698A5311DA174A95253Ce86C21ca7272b9B05f8, 0xeED1C0BA2c17855288c3a2B36f3b5068346fA2Bd, treasuryKOVIN); // WINK
        addToken(0x0f669808d88B2b0b3D23214DCD2a1cc6A8B1B5cd, 0x39888258d60FED9228F89e13eb57a92F1Fa832eb, treasuryKOVIN); // BLUB
    }

    event Received(address, uint);
    
    receive() external payable {
        emit Received(msg.sender, msg.value);
        enterWithNATIVE();
    }

    function calculateEquiv(address token, uint256 amountToken, address tokenRef) public view returns (uint amountOut) {
        (uint reserveRef, uint reserveNATIVE) = getReservesForTokenIn(tokenRef);
        uint amountInNative = getAmountOut(amountToken, reserveRef, reserveNATIVE);
        if(token == 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7){
            amountOut = amountInNative;
        }
        else{
            if(token == tokenRef){
                amountOut = amountToken;
            }
            else{
                (uint reserveNative, uint reserveToken) = getReservesForTokenOut(token);
                amountOut = getAmountOut(amountInNative, reserveNative, reserveToken);
            }
        }
    }

    function calculateValue(address token, uint256 amountToken) public view returns (uint amountOut) {
        (uint reserveToken, uint reserveNATIVE) = getReservesForTokenIn(token);
        uint amountNative = getAmountOut(amountToken, reserveToken, reserveNATIVE);
        (uint reserveNative, uint reserveUSDC) = getReservesForTokenOut(USDC);
        amountOut = getAmountOut(amountNative, reserveNative, reserveUSDC);
    }

    function calculateAvaxValue(uint256 amountAvax) public view returns (uint amountOut) {
        (uint reserveNative, uint reserveUSDC) = getReservesForTokenOut(USDC);
        amountOut = getAmountOut(amountAvax, reserveNative, reserveUSDC);
    }

    function getTotalPrizeValue() public view returns (uint256) {
        uint256 totalPrizeValue = 0;
        for(uint i=0; i<tokens.length; i++){
            uint256 tokenPrizeValue = getTokenPrizeValue(tokens[i]);
            totalPrizeValue += tokenPrizeValue;
        }
        totalPrizeValue += getAvaxPrizeValue();
        return totalPrizeValue;
    }

    function getTokenPrize(address token) public view returns (uint256) {
        return tokenPrize[token];
    }

    function getTokenPrizeValue(address token) public view returns (uint256) {
        return calculateValue(token, tokenPrize[token]);
    }

    function getAvaxPrizeValue() public view returns (uint256) {
        return calculateAvaxValue(address(this).balance);
    }

    function getKovinEntries(address user) public view returns (uint256) {
        return entries[user];
    }

    function enter(address token) public {
        require(tx.origin == msg.sender, "Only EOA");
        require(isActive[token] == true, "Invalid token");
        require(endTime >= block.timestamp, "Game has ended");
        uint256 amount;
        if(token != KOVIN){
            amount = calculateEquiv(token, amountKOVIN, KOVIN);
        }
        else{
            amount = amountKOVIN;
            entries[msg.sender]++;
        }
        require(IERC20(token).allowance(msg.sender, address(this)) >= amount, "Not enough allowance");
        IERC20(token).transferFrom(msg.sender, address(this), amount);
        uint256 amountTreasury = amount/4;
        IERC20(token).transfer(treasury[token], amountTreasury);
        tokenPrize[token] += amount-amountTreasury;
        endTime = block.timestamp + duration;
        lastPlayer = msg.sender;
    }

    function enterWithNATIVE() public payable {
		require(tx.origin == msg.sender, "Only EOA");
        require(endTime >= block.timestamp, "Game has ended");
	
		uint256 amount = calculateEquiv(NATIVE, amountKOVIN, KOVIN);
		require(msg.value >= amount, "Not enough funds sent");
	
		if (msg.value > amount) {
			(bool refundSuccess, ) = msg.sender.call{value: msg.value - amount}("");
			require(refundSuccess, "Refund failed");
		}
	
		(bool treasurySuccess, ) = treasuryKOVIN.call{value: amount}("");
		require(treasurySuccess, "Transfer to treasury failed");
	
		endTime = block.timestamp + duration;
		lastPlayer = msg.sender;
	}

    //ADMIN

    function addToken(address _newToken, address _pairToken, address _treasury) public onlyOwner {
        tokens.push(_newToken);
        pairsToken[_newToken] = _pairToken;
        isActive[_newToken] = true;
        treasury[_newToken] = _treasury;
    }

    function removeToken(address _oldToken) public onlyOwner {
        require(tokens.length > 0, "Token list is empty");
        uint indexToRemove = tokens.length;

        for (uint i = 0; i < tokens.length; i++) {
            if (tokens[i] == _oldToken) {
                indexToRemove = i;
                break;
            }
        }

        require(indexToRemove < tokens.length, "Token not found");
        tokens[indexToRemove] = tokens[tokens.length - 1];
        tokens.pop();
        isActive[_oldToken] = false;
    }

    function startGame() public onlyOwner {
        startTime = block.timestamp;
        endTime = block.timestamp+duration;
    }

    function changeAmountKOVIN(uint256 _newAmount) public onlyOwner {
        amountKOVIN = _newAmount;
    }

    function changeDuration(uint256 _newDuration) public onlyOwner {
        duration = _newDuration;
    }

    function payWinner() public onlyOwner {
        require(endTime != 0 && block.timestamp > endTime, "Game in progress");
        winner = lastPlayer;
        for(uint i=0; i<tokens.length; i++){
            IERC20(tokens[i]).transfer(winner, tokenPrize[tokens[i]]);
        }
        (bool success, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(success, "Transfer to winner failed");
        winnerPaid = true;
    }

    function withdrawToken(address token) public onlyOwner {
        require(winnerPaid == true || startTime == 0, "Game in progress");
        IERC20(token).transfer(msg.sender, IERC20(token).balanceOf(address(this)));
    }

    function withdrawNATIVE() public onlyOwner {
        require(winnerPaid == true || startTime == 0, "Game in progress");
        payable(msg.sender).transfer(address(this).balance);
    }

    //INTERNAL

    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) internal pure returns (uint amountOut) {
        uint numerator = amountIn * reserveOut;
        uint denominator = reserveIn + amountIn;
        amountOut = numerator / denominator;
    }

    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
    }

    function getReservesForTokenIn(address token) internal view returns (uint reserveA, uint reserveB) {
        (address token0,) = sortTokens(token, NATIVE);
        (uint reserve0, uint reserve1,) = IPair(pairsToken[token]).getReserves();
        (reserveA, reserveB) = token == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

    function getReservesForTokenOut(address token) internal view returns (uint reserveA, uint reserveB) {
        (address token0,) = sortTokens(NATIVE, token);
        (uint reserve0, uint reserve1,) = IPair(pairsToken[token]).getReserves();
        (reserveA, reserveB) = NATIVE == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

}