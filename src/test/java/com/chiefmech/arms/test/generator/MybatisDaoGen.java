package com.chiefmech.arms.test.generator;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import junit.framework.TestCase;

import com.chiefmech.arms.entity.GongDanCheLiangJianCe;

public class MybatisDaoGen extends TestCase {
	private static List<Field> fieldLst = new ArrayList<Field>();

	public static void main(String[] args) {

		Object[][] beans = {{"gongdanjiance", "txtJianceGuid",
				GongDanCheLiangJianCe.class}};

		StringBuffer sb = new StringBuffer();
		String fieldInfo = "";
		for (Object[] bean : beans) {
			String tableName = (String) bean[0];
			String fieldId = (String) bean[1];
			Class entity = (Class) bean[2];
			initFieldLst(entity);
			String entityName = entity.getSimpleName();

			// sql for action insert
			sb.setLength(0);
			fieldInfo = "";
			sb.append("@Insert(\"insert into ").append(tableName).append("(");
			for (Field field : fieldLst) {
				if (fieldInfo.length() > 0) {
					fieldInfo += ",";
				}
				fieldInfo += field.getName();
			}
			sb.append(fieldInfo).append(") values(");
			fieldInfo = "";
			for (Field field : fieldLst) {
				if (fieldInfo.length() > 0) {
					fieldInfo += ",";
				}
				fieldInfo += "#{" + field.getName() + "}";
			}
			sb.append(fieldInfo).append(")\")\n");
			sb.append(String.format("public int insert%s(%s item);\n", "Item",
					entityName));
			System.out.println(sb.toString());

			// sql for action update
			sb.setLength(0);
			fieldInfo = "";
			sb.append("@Update(\"update ").append(tableName).append(" set ");
			for (Field field : fieldLst) {
				String fieldName = field.getName();
				if (!fieldName.equals(fieldId)) {
					if (fieldInfo.length() > 0) {
						fieldInfo += ",";
					}
					fieldInfo += fieldName + "=#{" + fieldName + "}";
				}
			}
			sb.append(fieldInfo).append(" where ").append(fieldId)
					.append("=#{").append(fieldId).append("}\")\n");
			sb.append(String.format("public int update%s(%s item);\n", "Item",
					entityName));
			System.out.println(sb.toString());

			// sql for action delete
			sb.setLength(0);
			sb.append("@Delete(\"delete from ").append(tableName)
					.append(" where ").append(fieldId).append("=#{")
					.append(fieldId).append("}\")\n");
			sb.append(String
					.format("public int delete%s(String id);\n", "Item"));
			System.out.println(sb.toString());

			// sql for action select
			sb.setLength(0);
			sb.append("@Select(\"select * from ").append(tableName)
					.append("\")\n");
			sb.append(String.format("public List<%s> select%s();\n",
					entityName, "AllItems"));
			System.out.println(sb.toString());
		}
	}

	private static void initFieldLst(Class cls) {
		if (!"Object".equals(cls.getSimpleName())) {
			Field[] fields = cls.getDeclaredFields();
			for (Field field : fields) {
				fieldLst.add(field);
			}
			initFieldLst(cls.getSuperclass());
		}
	}
}
