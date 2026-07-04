// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/IIxsSale.sol";
import "./interfaces/IIxsTreasury.sol";
import "./interfaces/IERC20DistributionController.sol";

contract IxsSale is Context, AccessControl, ReentrancyGuard, IIxsSale {
    using SafeERC20 for IERC20;

    struct InvestStage {
        uint256 amountPreSale;
        uint256 amountPubSale;
    }

    address public treasury;
    address public WETH;
    address public feeRecipient;
    uint256 public saleNonce;
    mapping(address => uint256) public userNonce;
    mapping(uint256 => mapping(address => InvestStage)) public investAmounts;
    mapping(uint256 => LaunchSale) internal onSales;
    mapping(uint256 => SaleArgs) public onSaleInvests;
    bytes32 public constant INVEST_TYPEHASH =
        keccak256(
            "investPublicSale(uint256 _saleId,uint256 _amount,InvestStruct calldata _investData)"
        );
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public DOMAIN_SEPARATOR;
    uint256 private constant IXS_AMOUNT_OUT_PRECISION = 1e6;

    constructor(
        address _treasury,
        address _WETH,
        address _feeRecipient
    ) {
        require(
            _treasury != address(0) &&
                _WETH != address(0) &&
                _feeRecipient != address(0),
            "IxsSale: ZERO_ADDRESS"
        );

        treasury = _treasury;
        WETH = _WETH;
        feeRecipient = _feeRecipient;
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _grantRole(OPERATOR_ROLE, _msgSender());
        DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                keccak256(
                    "EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"
                ),
                keccak256("SALE_CONTRACT"),
                keccak256(bytes("1")),
                block.chainid,
                address(this)
            )
        );
    }

    modifier dealExist(uint256 _saleId) {
        require(
            onSales[_saleId].controller != address(0),
            "IxsSale: SALE_NOT_EXIST"
        );
        _;
    }

    modifier validateData(uint256 _amount) {
        require(_amount > 0, "IxsSale: INVALID_ARGS");
        _;
    }

    modifier onlyRootUser(uint256 _saleId, address _sender) {
        require(
            onSales[_saleId].initiator == _sender ||
            hasRole(OPERATOR_ROLE, _sender),
            "IxsSale: ONLY_ROOT_USER"
        );
        _;
    }

    receive() external payable {}

    function launchSale(LaunchSale calldata launchSaleData)
        external
        onlyRole(OPERATOR_ROLE)
    {
        require(
            launchSaleData.controller != address(0) &&
            launchSaleData.initiator != address(0) &&
            launchSaleData.paymentToken != address(0),
            "IxsSale: ZERO_ADDRESS"
        );
        require(
            launchSaleData.rate != 0 &&
            launchSaleData.caps[1] != 0 &&
            launchSaleData.caps[2] != 0 &&
            launchSaleData.caps[1] <= launchSaleData.caps[2] &&
            launchSaleData.deadlines[1] >= block.timestamp &&
            launchSaleData.deadlines[1] <= launchSaleData.deadlines[2],
            "IxsSale: WRONG_ARGUMENTS"
        );
        require(
            launchSaleData.investLimits[2] != 0 &&
            launchSaleData.investLimits[3] != 0 &&
            launchSaleData.investLimits[2] <=
            launchSaleData.investLimits[3],
            "IxsSale: ZERO_AMOUNT"
        );
        onSales[saleNonce] = launchSaleData;
        emit StartSale(saleNonce);
        saleNonce += 1;
    }


    function setNewDeadline(uint256 _saleId, uint256[3] calldata deadlines) 
        external 
        onlyRole(OPERATOR_ROLE) 
    {
        LaunchSale storage sale = onSales[_saleId];

        require(deadlines[1] > deadlines[0], "IxsSale: INVALID_DEADLINE_10");
        require(deadlines[2] > deadlines[1], "IxsSale: INVALID_DEADLINE_21");

        sale.deadlines = deadlines;
        emit SetNewDeadLine(_saleId);
    }

    function investPreSale(
        uint256 _saleId,
        uint256 _amount,
        bytes32[] calldata _membershipProof
    )
        external
        payable
        nonReentrant
        dealExist(_saleId)      /// Sale exist
        validateData(_amount)   /// amount is not zero
    {
        address sender = _msgSender();
        uint256 currentTime = block.timestamp;
        LaunchSale memory sale = onSales[_saleId];

        {
            require(
                !onSaleInvests[_saleId].forceFinalize,
                "IxsSale: SALE_FORCE_FINILIZED"
            );
            require(
                _verifyWhitelistMembership(
                    onSaleInvests[_saleId].whitelistRoot,
                    _membershipProof,
                    sender
                ),
                "IxsSale: NOT_IN_WHITELIST"
            );
            require(
                currentTime >= sale.deadlines[0] && // more than startPreSale
                currentTime < sale.deadlines[1], // less than startPublic
                "IxsSale: NOT_PRE_SALE"
            );
            require(
                _amount >= sale.investLimits[0] && // more than minPreInvest
                _amount + investAmounts[_saleId][sender].amountPreSale <=
                    sale.investLimits[1] && // less than maxPreInvest
                _amount + onSaleInvests[_saleId].dealBalance <=
                    sale.caps[0], // total deal less than preSaleCap
                "IxsSale: UNBOUNDED_INVESTMENT"
            );
        }
        _invest(_amount, sender, sale.paymentToken);
        onSaleInvests[_saleId].dealBalance += _amount;
        investAmounts[_saleId][sender].amountPreSale += _amount;
        emit InvestPreSale(_saleId, _amount, sale.paymentToken, sender);
    }

    function investPublicSale(
        uint256 _saleId,
        uint256 _amount,
        InvestStruct calldata _investData
    ) external payable nonReentrant dealExist(_saleId) validateData(_amount) {
        address sender = _msgSender();
        LaunchSale memory sale = onSales[_saleId];
        uint256 currentTime = block.timestamp;
        {
            require(
                !onSaleInvests[_saleId].forceFinalize,
                "IxsSale: SALE_FORCE_FINILIZED"
            );
            require(
                _verifySignature(_saleId, _amount, _investData),
                "IxsSale: INVALID_SIGNATURE"
            );
            require(
                currentTime >= sale.deadlines[1] &&
                    currentTime < sale.deadlines[2],
                "IxsSale: TIME_ERROR"
            );
            require(
                _amount >= sale.investLimits[2] &&
                _amount + investAmounts[_saleId][sender].amountPubSale <=
                    sale.investLimits[3] &&
                _amount + onSaleInvests[_saleId].dealBalance <=
                    sale.caps[2],
                "IxsSale: UNBOUNDED_INVESTMENT"
            );
        }
        _invest(_amount, sender, sale.paymentToken);
        onSaleInvests[_saleId].dealBalance += _amount;
        investAmounts[_saleId][sender].amountPubSale += _amount;
        emit InvestPublicSale(_saleId, _amount, sale.paymentToken, sender);
    }

    function forceFinalize(uint256 _saleId)
        external
        dealExist(_saleId)
        onlyRootUser(_saleId, _msgSender())
    {
        require(
            !onSaleInvests[_saleId].forceFinalize,
            "IxsSale: ALREADY_FINALIZED"
        );
        require(
            onSales[_saleId].caps[1] <= onSaleInvests[_saleId].dealBalance,
            "IxsSale: LESS_THEN_SOFT_CAP"
        );
        onSaleInvests[_saleId].forceFinalize = true;
        emit ForceFinalize(_saleId, _msgSender());
    }

    function forceWithdraw(
        address _tokenAddr,
        address _to,
        uint256 _amount
    ) external onlyRole(OPERATOR_ROLE) {
        require(
            _tokenAddr != address(0) && _to != address(0),
            "IxsSale: ZERO_ADDRESS"
        );
        _claim(_tokenAddr, _to, _amount);
        emit ForceWithdraw(_tokenAddr, _amount, _to, _msgSender());
    }

    function batchClaim(uint256 _saleId, address[] calldata _receiver)
        external
        dealExist(_saleId)
        onlyRootUser(_saleId, _msgSender())
    {
        require(_receiver.length <= 200, "IxsSale: OUT_OF_GAS");
        if (
            !onSaleInvests[_saleId].forceFinalize ||
            onSales[_saleId].caps[2] != onSaleInvests[_saleId].dealBalance // not forceFinalize OR not hardCap reached
        ) {
            require(
                block.timestamp > onSales[_saleId].deadlines[2],
                "IxsSale: SALE_DOES_NOT_FINISH"
            );
        }
        bool isSuccessSale = onSales[_saleId].caps[1] <= onSaleInvests[_saleId].dealBalance; // sale finished success or fail
        for (uint256 i; i < _receiver.length; i++) {
            require(_receiver[i] != address(0), "IxsSale: ZERO_ADDRESS");
            uint256 amount = 
                investAmounts[_saleId][_receiver[i]].amountPreSale +
                investAmounts[_saleId][_receiver[i]].amountPubSale; // calculate amount
            delete investAmounts[_saleId][_receiver[i]]; // delete user amounts
            require(amount > 0, "IxsSale: NOTHING_TO_CLAIM");
            if (isSuccessSale) {
                uint256 amountOut = getExchangeRate(_saleId, amount);
                IERC20DistributionController(onSales[_saleId].controller)
                    .transferController(_receiver[i], amountOut); // (success sale) transfer secTokens
                onSaleInvests[_saleId].userClaimed += amount;
            } else {
                _claim(onSales[_saleId].paymentToken, _receiver[i], amount); // (failed sale) transfer paymentToken
            }
        }
        emit BatchClaim(_saleId, _receiver);
    }

    function withdrawIssuer(uint256 _saleId)
        external
        dealExist(_saleId)
        onlyRootUser(_saleId, _msgSender())
    {
        LaunchSale memory sale = onSales[_saleId]; // memory or storage TEST
        SaleArgs memory argsSale = onSaleInvests[_saleId];
        require(
            block.timestamp > sale.deadlines[2],
            "IxsSale: DOES_NOT_FINISH"
        );
        require(argsSale.dealBalance >= sale.caps[1], "IxsSale: SALE_FAILED");
        require(
            argsSale.userClaimed == argsSale.dealBalance,
            "IxsSale: NOT_ALL_INVESTOR_CLAIMED"
        );
        require(
            !onSaleInvests[_saleId].issuerClaimed,
            "IxsSale: ISSUER_CLAIMED"
        );
        onSaleInvests[_saleId].issuerClaimed = true;
        if (argsSale.dealBalance != sale.caps[2] && sale.tokenMinted) {
            // return reminder of secToken
            uint256 secAmountOut = getExchangeRate(
                _saleId, 
                sale.caps[2] - argsSale.dealBalance
            );
            IERC20DistributionController(sale.controller)
                .transferController(sale.initiator, secAmountOut);
        }
        uint256 feeAmount = 
            argsSale.dealBalance 
            * 
            sale.feePercent
            / 
            1000; // calculate fee
        if (feeAmount != 0) {
            // fee not ZERO
            _claim(sale.paymentToken, feeRecipient, feeAmount);
        }
        _claim(
            sale.paymentToken, 
            sale.initiator, 
            argsSale.dealBalance - feeAmount
        ); // issuer income (totalDealBalance - fee)
        emit WithdrawIssuer(
            sale.paymentToken,
            argsSale.dealBalance,
            sale.initiator
        );
    }

    function claim(uint256 _saleId, address _to) external dealExist(_saleId) {
        address sender = _msgSender();
        LaunchSale memory sale = onSales[_saleId]; // memory or storage TEST
        SaleArgs memory argsSale = onSaleInvests[_saleId];
        require(_to != address(0), "IxsSale: ZERO_ADDRESS");
        require(
            sale.caps[1] > argsSale.dealBalance,
            "IxsSale: DEAL_SUCCESSFULLY_FUNDED"
        );
        uint256 amount = 
            investAmounts[_saleId][sender].amountPreSale +
            investAmounts[_saleId][sender].amountPubSale;
        delete investAmounts[_saleId][sender];
        require(amount > 0, "IxsSale: NOTHING_TO_CLAIM");
        _claim(sale.paymentToken, _to, amount);
        emit Claim(_saleId, amount, sale.paymentToken, _to, sender);
    }

    function setWhitelistRoot(uint256 _saleId, bytes32 _whitelistRoot)
        external
        onlyRole(OPERATOR_ROLE)
        dealExist(_saleId)
    {
        require(_whitelistRoot != bytes32(0), "IxsSale: INVALID_ROOT");
        onSaleInvests[_saleId].whitelistRoot = _whitelistRoot;
    }

    function getOnSales(uint256 _saleId)
        external
        view
        returns (LaunchSale memory)
    {
        return onSales[_saleId];
    }

    function getExchangeRate(
        uint256 _saleId, 
        uint256 _amount
    ) public view returns(uint256 _amountOut){
        _amountOut = _amount * onSales[_saleId].rate * IXS_AMOUNT_OUT_PRECISION; // calculate how much claim secTokens
        address secTokenAddr = IERC20DistributionController(onSales[_saleId].controller).token();
        uint256 decimalsOfSec = IERC20Metadata(secTokenAddr).decimals();
        uint256 decimalsOfPay = onSales[_saleId].paymentToken == WETH 
            ? 
            18 
            : 
            IERC20Metadata(onSales[_saleId].paymentToken).decimals();
        if (decimalsOfSec >= decimalsOfPay){
            _amountOut = (_amountOut * 10 ** (decimalsOfSec - decimalsOfPay)) / IXS_AMOUNT_OUT_PRECISION**2;
        } else if(decimalsOfSec < decimalsOfPay){
            _amountOut = (_amountOut / 10 ** (decimalsOfPay - decimalsOfSec)) / IXS_AMOUNT_OUT_PRECISION**2;
        }
    }

    function _claim(
        address _token,
        address _to,
        uint256 _amount
    ) internal {
        if (_token == WETH) {
            IIxsTreasury(treasury).withdrawETH(_to, _amount);
        } else {
            IIxsTreasury(treasury).withdraw(_token, _to, _amount);
        }
    }

    function _invest(
        uint256 amount,
        address sender,
        address paymentToken
    ) internal {
        uint256 amountETH = msg.value;
        // investment in ETH
        if (amountETH == amount && paymentToken == WETH) {
            require(msg.value == amount, "IxsSale: MISMATCH_AMOUNT");
            require(
                payable(treasury).send(amountETH),
                "IxsSale: ETH_TRANSFER_FAILED"
            );
        // investment in ERC20
        } else if (amountETH == 0 && paymentToken != WETH) {
            SafeERC20.safeTransferFrom(
                IERC20(paymentToken),
                sender,
                treasury,
                amount
            );
        } else {
            revert("IxsSale: WRONG_INVEST_PART");
        }
    }

    function _verifyWhitelistMembership(
        bytes32 whitelistRoot,
        bytes32[] memory proof,
        address addr
    ) internal pure returns (bool) {
        bytes32 leaf = keccak256(abi.encodePacked(addr));
        return MerkleProof.verify(proof, whitelistRoot, leaf);
    }

    function _verifySignature(
        uint256 _saleId,
        uint256 _amount,
        InvestStruct memory _investData
    ) internal returns (bool) {
        address _from = _msgSender();
        if (_investData.deadline < block.timestamp) return false;
        if (_investData.nonce != userNonce[_from]) return false;
        userNonce[_from] += 1;
        bytes32 digest = keccak256(
            abi.encodePacked(
                "\x19\x01",
                DOMAIN_SEPARATOR,
                keccak256(
                    abi.encode(
                        INVEST_TYPEHASH,
                        _saleId,
                        _amount,
                        _investData.to,
                        _investData.nonce,
                        _investData.deadline
                    )
                )
            )
        );
        address recoveredAddress = ecrecover(
            digest,
            _investData.v,
            _investData.r,
            _investData.s
        );
        return recoveredAddress != address(0) && hasRole(OPERATOR_ROLE, recoveredAddress);
    }
}
