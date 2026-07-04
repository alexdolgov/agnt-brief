// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import "../Libraries/SafeMath.sol";
import "../Libraries/EnumerableSet.sol";
import "../Libraries/SafeERC20.sol";


abstract contract ERC20 is IERC20 {

    using SafeMath for uint256;

    // TO DO comment actual hash value.
    bytes32 constant private ERC20TOKEN_ERC1820_INTERFACE_ID = keccak256( "ERC20Token" );

    // Present in ERC777
    mapping (address => uint256) internal _balances;

    // Present in ERC777
    mapping (address => mapping (address => uint256)) internal _allowances;

    // Present in ERC777
    uint256 internal _totalSupply;

    // Present in ERC777
    string internal _name;

    // Present in ERC777
    string internal _symbol;

    // Present in ERC777
    uint8 internal _decimals;

    constructor (string memory name_, string memory symbol_, uint8 decimals_) {
        _name = name_;
        _symbol = symbol_;
        _decimals = decimals_;
    }

    function name() public view returns (string memory) {
        return _name;
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }

    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        _approve(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address sender, address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, _allowances[sender][msg.sender].sub(amount, "ERC20: transfer amount exceeds allowance"));
        return true;
    }

    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].add(addedValue));
        return true;
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].sub(subtractedValue, "ERC20: decreased allowance below zero"));
        return true;
    }

    function _transfer(address sender, address recipient, uint256 amount) internal virtual {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(sender, recipient, amount);

        _balances[sender] = _balances[sender].sub(amount, "ERC20: transfer amount exceeds balance");
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(sender, recipient, amount);
    }

    function _mint(address account_, uint256 amount_) internal virtual {
        require(account_ != address(0), "ERC20: mint to the zero address");
        _beforeTokenTransfer(address( this ), account_, amount_);
        _totalSupply = _totalSupply.add(amount_);
        _balances[account_] = _balances[account_].add(amount_);
        emit Transfer(address( this ), account_, amount_);
    }

    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        _balances[account] = _balances[account].sub(amount, "ERC20: burn amount exceeds balance");
        _totalSupply = _totalSupply.sub(amount);
        emit Transfer(account, address(0), amount);
    }

    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    function _beforeTokenTransfer( address from_, address to_, uint256 amount_ ) internal virtual { }
}

library Counters {
    using SafeMath for uint256;

    struct Counter {
        uint256 _value; // default: 0
    }

    function current(Counter storage counter) internal view returns (uint256) {
        return counter._value;
    }

    function increment(Counter storage counter) internal {
        counter._value += 1;
    }

    function decrement(Counter storage counter) internal {
        counter._value = counter._value.sub(1);
    }
}

interface IERC2612Permit {

    function permit(
        address owner,
        address spender,
        uint256 amount,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    function nonces(address owner) external view returns (uint256);
}

abstract contract ERC20Permit is ERC20, IERC2612Permit {
    using Counters for Counters.Counter;

    mapping(address => Counters.Counter) private _nonces;

    // keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
    bytes32 public constant PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9;

    bytes32 public DOMAIN_SEPARATOR;

    constructor() {
        uint256 chainID;
        assembly {
            chainID := chainid()
        }

        DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                keccak256(bytes(name())),
                keccak256(bytes("1")), // Version
                chainID,
                address(this)
            )
        );
    }

    function permit(
        address owner,
        address spender,
        uint256 amount,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual override {
        require(block.timestamp <= deadline, "Permit: expired deadline");

        bytes32 hashStruct =
        keccak256(abi.encode(PERMIT_TYPEHASH, owner, spender, amount, _nonces[owner].current(), deadline));

        bytes32 _hash = keccak256(abi.encodePacked(uint16(0x1901), DOMAIN_SEPARATOR, hashStruct));

        address signer = ecrecover(_hash, v, r, s);
        require(signer != address(0) && signer == owner, "ZeroSwapPermit: Invalid signature");

        _nonces[owner].increment();
        _approve(owner, spender, amount);
    }

    function nonces(address owner) public view override returns (uint256) {
        return _nonces[owner].current();
    }
}

interface IOwnable {
    function owner() external view returns (address);

    function renounceOwnership() external;

    function transferOwnership( address newOwner_ ) external;
}

contract Ownable is IOwnable {

    address internal _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor () {
        _owner = msg.sender;
        emit OwnershipTransferred( address(0), _owner );
    }

    function owner() public view override returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require( _owner == msg.sender, "Ownable: caller is not the owner" );
        _;
    }

    function renounceOwnership() public virtual override onlyOwner() {
        emit OwnershipTransferred( _owner, address(0) );
        _owner = address(0);
    }

    function transferOwnership( address newOwner_ ) public virtual override onlyOwner() {
        require( newOwner_ != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred( _owner, newOwner_ );
        _owner = newOwner_;
    }
}
// TODO REVISAR ONLYOWNER MAX
contract SHUB is ERC20Permit, Ownable {

    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint private percentageBurnSwapTeam;
    uint private buyFeePercentage;
    uint private sellFeePercentage;
    uint public constant MAX_FEE = 2000;
    uint public constant MAX_SUPPLY = 100000000000000000;

    // In case we want to add liquidity to a different DEX - we will do it manually
    bool public dexActive;
    address public devWallet;
    address public toBurnWallet;
    address public dexAddress;
    mapping(address => bool) public lPs;
    mapping(address => bool) public routers;
    mapping(address => bool) public _isExcludedFromFee;

    constructor() ERC20("ShardeumHub", "SHUB", 9) {
        mint(msg.sender, MAX_SUPPLY);
        percentageBurnSwapTeam = 50;
        buyFeePercentage = 450;
        sellFeePercentage = 850;
        _isExcludedFromFee[msg.sender] = true;
        devWallet = msg.sender;
        toBurnWallet = msg.sender;
    }

    //TODO  falta testejar totes les funcions dels getters i setters!!! i els onlyowners
    function setpercentageBurnSwapTeam(uint _percentageBurnSwapTeam) public onlyOwner{
        require(_percentageBurnSwapTeam <= 100, "percentageBurnSwapTeam is too high");
        percentageBurnSwapTeam = _percentageBurnSwapTeam;
    }

    function getPercentageBurnSwapTeam() public view returns(uint){
        return percentageBurnSwapTeam;
    }

    function setDevWallet(address _devWallet) public onlyOwner{
        require(_devWallet != address(0), "Incorrect devWallet");
        devWallet = _devWallet;
    }

    function getDexAddress() public view returns(address){
        return dexAddress;
    }

    function setDexAddress(address _dexAddress) public onlyOwner{
        require(_dexAddress != address(0), "Incorrect dexAddress");
        dexAddress = _dexAddress;
    }

    function getDexActive() public view returns(bool){
        return dexActive;
    }

    function toogleDexActive() public onlyOwner{
        dexActive = !dexActive;
    }

    function setToBurnWallet(address _toBurnWallet) public onlyOwner{
        require(_toBurnWallet != address(0), "Incorrect toBurnWallet");
        toBurnWallet = _toBurnWallet;
    }

    function setBuyFeePercentage(uint _buyFeePercentage) public onlyOwner{
        require(_buyFeePercentage <= MAX_FEE, "BuyFee is too high");
        buyFeePercentage = _buyFeePercentage;
    }

    function getBuyFeePercentage() public view returns(uint){
        return buyFeePercentage;
    }

    function setSellFeePercentage(uint _sellFeePercentage) public onlyOwner{
        require(_sellFeePercentage <= MAX_FEE, "SellFee is too high");
        sellFeePercentage = _sellFeePercentage;
    }

    function getSellFeePercentage() public view returns(uint){
        return sellFeePercentage;
    }

    function setLPWithFee(address lP) public onlyOwner{
        lPs[lP] = true;
    }

    function removeLPFees(address lP) public onlyOwner{
        delete lPs[lP];
    }

    function getLPStatus(address lP) public view returns (bool){
        return lPs[lP];
    }

    function setRouterWithFee(address router) public onlyOwner{
        routers[router] = true;
    }

    function removeRouterFees(address router) public onlyOwner{
        delete routers[router];
    }

    function getRouterStatus(address router) public view returns (bool){
        return routers[router];
    }

    function setAddressExcludedFromFee(address account) public onlyOwner{
        _isExcludedFromFee[account] = true;
    }

    function removeAddressExcludedFromFee(address account) public onlyOwner{
        delete _isExcludedFromFee[account];
    }

    function getAddressExcludedFromFee(address account) public view returns (bool){
        return _isExcludedFromFee[account];
    }

    function mint(address account, uint amount) internal {
        _mint(account, amount);
    }

    function burn(uint amount) public virtual {
        _burn(msg.sender, amount);
    }

    function burnFrom(address account, uint amount) public virtual {
        _burnFrom(account, amount);
    }

    function _burnFrom(address account, uint amount) public virtual {
        uint256 decreasedAllowance_ =
        allowance(account, msg.sender).sub(
            amount,
            "ERC20: burn amount exceeds allowance"
        );

        _approve(account, msg.sender, decreasedAllowance_);
        _burn(account, amount);
    }

    function _transfer(address sender, address recipient, uint amount) internal override virtual{
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");
        require(_balances[sender] >= amount, "ERC20: transfer amount exceeds balance");

        _beforeTokenTransfer(sender, recipient, amount);

        uint taxAmount;
        bool takeFee;

        if (!_isExcludedFromFee[sender]) {
            takeFee = true;
        }

        bool isBuy = getLPStatus(sender) || getRouterStatus(sender);
        bool isSell = getLPStatus(recipient) || getRouterStatus(recipient);

        taxAmount = (isBuy) ? amount.mul(buyFeePercentage).div(10000) : taxAmount;
        taxAmount = (isSell) ? amount.mul(sellFeePercentage).div(10000) : taxAmount;

        if (!takeFee || taxAmount == 0){
            _basicTransfer(sender, recipient, amount);
        } else {
            amount = amount.sub(taxAmount);
            if (!dexActive){
                _basicTransfer(sender, devWallet, taxAmount);
                _basicTransfer(sender, recipient, amount);
            } else{
                // AQUÍ FAREM EL QUE HAGUEM DE FER AMB EL TAXAMOUNT QUE ES FACI AUTOMÀTIC!!!!!!!!
                // TODO UN PERCENTATGE CAP A BURN, UN CAP A SWAP + LIQUIDITY I UN CAP AL TEAM
            }
        }
    }

    function _basicTransfer(address sender, address recipient, uint amount) internal returns (bool){
        _balances[sender] = _balances[sender].sub(amount, "Insufficient Balance");
        _balances[recipient] = _balances[recipient].add(amount);

        emit Transfer(sender, recipient, amount);

        return true;
    }


    function recoverTokens(address tokenAddress, uint amount) external onlyOwner {
        IERC20(tokenAddress).safeTransfer(address(msg.sender), amount);
    }
}
