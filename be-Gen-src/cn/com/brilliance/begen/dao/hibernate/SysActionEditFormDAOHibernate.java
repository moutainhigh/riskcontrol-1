package cn.com.brilliance.begen.dao.hibernate;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.dao.DataRetrievalFailureException;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Expression;

import cn.com.brilliance.begen.dao.SysActionEditFormDAO;
import cn.com.brilliance.begen.model.SysActionEditForm;
import cn.com.brilliance.begen.common.dao.BeGenHibernateDaoSupport;

/**
 * SysActionEditFormDAO接口具体实现类.
 * @author Administrator.
 */

public class SysActionEditFormDAOHibernate extends BeGenHibernateDaoSupport implements SysActionEditFormDAO {    

    /**
     *  根据主键获得SysActionEditForm对象.
     *  @param pkey SysActionEditForm主键
     *  @return SysActionEditForm.
     */
    public SysActionEditForm getSysActionEditForm(java.lang.String pkey) {
        SysActionEditForm sysActionEditForm = (SysActionEditForm) getHibernateTemplate().get(SysActionEditForm.class, pkey);
        if (sysActionEditForm == null) {
            return sysActionEditForm;
        }
        return sysActionEditForm;

    }

    /**
     *  存储SysActionEditForm对象.
     *  @param  sysActionEditForm SysActionEditForm对象
     *  @return SysActionEditForm.
     */
    public SysActionEditForm saveSysActionEditForm(SysActionEditForm sysActionEditForm) {
        return (SysActionEditForm) getHibernateTemplate().merge(sysActionEditForm);
    }

    /**
     *  删除SysActionEditForm对象.
     *  @param pkey SysActionEditForm主键.
     */
    public void removeSysActionEditForm(java.lang.String pkey) {
        SysActionEditForm sysActionEditForm = getSysActionEditForm(pkey);
        getHibernateTemplate().delete(sysActionEditForm);
    }

    /**
     *  获取SysActionEditForm对象列表.
     *  @param  sysActionEditForm SysActionEditForm对象
     *  @return List.
     */
    public List getSysActionEditFormList(SysActionEditForm sysActionEditForm) {
        Criteria criteria = getSession().createCriteria(SysActionEditForm.class).add(
                Example.create(sysActionEditForm));
        if (sysActionEditForm.getId() != null) {
            criteria.add(Expression.eq("id", sysActionEditForm.getId()));
        }
        criteria.addOrder(Order.asc("sysRecordOrder"));
        return criteria.list();
    }

    /**
     *  根据查询条件获取SysActionEditForm对象列表(有用户权限限制).
     *  @param  queryMap 查询条件Map
     *  @return List.
     */
    public List getSysActionEditFormListOfQuery(Map queryMap) {
        String hsql = (String) queryMap.get("_hsql");
        if (hsql != null) {
            Query query = getSession().createQuery("from cn.com.brilliance.begen.model.SysActionEditForm where " + hsql);
            return query.list();
        }

        Criteria criteria = getSession().createCriteria(SysActionEditForm.class);

        criteria.addOrder(Order.asc("sysRecordOrder"));
        return getListFromQueryMap(queryMap, criteria);
    }

    /**
     *  根据查询条件获取SysActionEditForm对象列表(无用户权限限制).
     *  @param  queryMap 查询条件Map
     *  @return List.
     */
    public List getSysActionEditFormListOfNoAuthorityQuery(Map queryMap) {
        String hsql = (String) queryMap.get("_hsql");
        if (hsql != null) {
            Query query = getSession().createQuery("from cn.com.brilliance.begen.model.SysActionEditForm where " + hsql);
            return query.list();
        }
        Criteria criteria = getSession().createCriteria(SysActionEditForm.class);
        return getListFromQueryMap(queryMap, criteria);
    }

    private List getListFromQueryMap(Map queryMap,Criteria criteria) {
        //根据查询queryMap的键值，过滤SysActionEditForm对象
        Object[] keyArray = queryMap.keySet().toArray();  //转换查询字段名keySet为数组
        //遍历该数组，去除对应查询字段值为空的键值
        for (int i = 0; i < keyArray.length; i++) {
            String value = (String) queryMap.get(keyArray[i]);
            if (value == null || value.trim().length() == 0) {
                queryMap.remove(keyArray[i]);
            }
        }

        if (queryMap.get("id") != null) {
            criteria = criteria.add(Expression.eq("id", queryMap.get("id")));
        }
        if (queryMap.get("id_like") != null) {
            criteria = criteria.add(Expression.like("id", "%" + queryMap.get("id_like") + "%"));
        }

        if (queryMap.get("sysFormLayout") != null) {
            criteria = criteria.add(Expression.eq("sysFormLayout", queryMap.get("sysFormLayout")));
        }
        if (queryMap.get("sysFormLayout_like") != null) {
            criteria = criteria.add(Expression.like("sysFormLayout", "%" + queryMap.get("sysFormLayout_like") + "%"));
        }

        if (queryMap.get("name") != null) {
            criteria = criteria.add(Expression.eq("name", queryMap.get("name")));
        }
        if (queryMap.get("name_like") != null) {
            criteria = criteria.add(Expression.like("name", "%" + queryMap.get("name_like") + "%"));
        }

        if (queryMap.get("label") != null) {
            criteria = criteria.add(Expression.eq("label", queryMap.get("label")));
        }
        if (queryMap.get("label_like") != null) {
            criteria = criteria.add(Expression.like("label", "%" + queryMap.get("label_like") + "%"));
        }

        if (queryMap.get("authority") != null) {
            criteria = criteria.add(Expression.eq("authority", new Boolean((String) queryMap.get("authority"))));
        }
        if (queryMap.get("url") != null) {
            criteria = criteria.add(Expression.eq("url", queryMap.get("url")));
        }
        if (queryMap.get("url_like") != null) {
            criteria = criteria.add(Expression.like("url", "%" + queryMap.get("url_like") + "%"));
        }

        if (queryMap.get("target") != null) {
            criteria = criteria.add(Expression.eq("target", queryMap.get("target")));
        }
        if (queryMap.get("target_like") != null) {
            criteria = criteria.add(Expression.like("target", "%" + queryMap.get("target_like") + "%"));
        }

        if (queryMap.get("pageCheck") != null) {
            criteria = criteria.add(Expression.eq("pageCheck", new Boolean((String) queryMap.get("pageCheck"))));
        }
        if (queryMap.get("partyId") != null) {
            criteria = criteria.add(Expression.eq("partyId", queryMap.get("partyId")));
        }
        if (queryMap.get("partyId_like") != null) {
            criteria = criteria.add(Expression.like("partyId", "%" + queryMap.get("partyId_like") + "%"));
        }

        if (queryMap.get("urlDescription") != null) {
            criteria = criteria.add(Expression.eq("urlDescription", queryMap.get("urlDescription")));
        }
        if (queryMap.get("urlDescription_like") != null) {
            criteria = criteria.add(Expression.like("urlDescription", "%" + queryMap.get("urlDescription_like") + "%"));
        }

        if (queryMap.get("disableExpress") != null) {
            criteria = criteria.add(Expression.eq("disableExpress", queryMap.get("disableExpress")));
        }
        if (queryMap.get("disableExpress_like") != null) {
            criteria = criteria.add(Expression.like("disableExpress", "%" + queryMap.get("disableExpress_like") + "%"));
        }

        if (queryMap.get("confirmOperate") != null) {
            criteria = criteria.add(Expression.eq("confirmOperate", new Boolean((String) queryMap.get("confirmOperate"))));
        }
        if (queryMap.get("confirmMessage") != null) {
            criteria = criteria.add(Expression.eq("confirmMessage", queryMap.get("confirmMessage")));
        }
        if (queryMap.get("confirmMessage_like") != null) {
            criteria = criteria.add(Expression.like("confirmMessage", "%" + queryMap.get("confirmMessage_like") + "%"));
        }


        //根据查询queryMap的键值，提供排序功能,_order="域名1 asc|desc,域名2 asc|desc"
        if (queryMap.get("_order") != null) {
            addOrder(queryMap, criteria);
        }
        return criteria.list();
    }
}
